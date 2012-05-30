class SessionsController < ApplicationController
  # GET /sessions/new
  # GET /sessions/new.json
  def create
    if auth_user = User.authenticate(params[:username], params[:password])
      reset_session
      session[:username] = auth_user.username
      redirect_to root_path
    else
      render :new, :alert => "Username or password is incorrect"
    end
  end

  # DELETE /sessions/destroy
  # DELETE /sessions/destroy
  def destroy
    reset_session
    redirect_to root_path
  end
end
