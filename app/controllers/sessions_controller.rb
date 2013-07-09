class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_name(params[:name])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/users', notice: 'Successfully Logged In'
    else
      redirect_to action: 'new'
      flash[:notice] = 'Invalid Log In Credentials'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_url
  end
end
