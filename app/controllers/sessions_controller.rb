class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    session[:user_id] = user.id
    redirect_to root_path #this was in video, i was blind therefore didn't include it
  end

  def destroy
    reset_session
    redirect_to login_path
  end
end
