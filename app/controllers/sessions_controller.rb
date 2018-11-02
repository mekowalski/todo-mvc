class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    session[:user_id] = user.id
  end

  # if user changes the string at all, garuanteed there's no other seesion on the server with that string
  # in the sessions data, you can put in the attribute of the user
  # be given a reciept
  # cookie stores id of user session on the server
  # then use that id to pull data that corresponds to that user
  # ignore cookies, not secure
end
