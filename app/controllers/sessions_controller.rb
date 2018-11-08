class SessionsController < ApplicationController
  def new
  end

  def create
    if auth_hash = request.env['omniauth.auth']
      #then they logged in via oauth
      # raise auth_hash.inspect
      oauth_email = request.env['omniauth.auth']['info']['email']
      if user = User.find_by(email: oauth_email)
        # raise 'EXITING USER LOGIN VIA GH'.inspect
      # i've seen this user before, just log them in, there is no way they spoofed their email
        session[:user_id] = user.id
        redirect_to root_path
      else
        # now i know who the person is, but this is the first time they've come to the application
        #in theory also store provider and Userid on that provider
        user = User.create(email: oauth_email, password: SecureRandom.hex)
        if user.save
          session[:user_id] = user.id
          redirect_to root_path
        else
          raise user.errors.full_messages.inspect
        end
      end
    else
      #else they logged in normally with email and password
      user = User.find_by(email: params[:email])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to root_path
      else
      render 'sessions/new'
      end
    end
  end

  def destroy
    reset_session
    redirect_to login_path
  end
end
