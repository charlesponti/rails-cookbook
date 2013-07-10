class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :destroy]

  def index
    @users = User.all
    authorize! :read, @users
  end
  
  def show
    @user = User.find(current_user.id)
  end

  def show_recipe
    @recipe = Recipe.find(params[:id])
    @user = User.find(current_user.id)
    render action: 'show'
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] ||= @user.id
      flash[:notice] = "Welcome, #{@user.fullname}"
      redirect_to('/dashboard')
    else 
      render('new')
    end
  end

  def edit
  end

  def update
    if @user.update_attributes(params[:user].permit(:fullname, :name, :email, :password, :password_confirmation, :user_image))
      redirect_to '/dashboard'
    end
  end

  def destroy
    @user.destroy
  end

  private
  def set_user
    @user = User.find(params[:id])
  end
  def user_params
    params.require(:user).permit(:fullname, :name, :email, :password, :password_confirmation, :user_image)
  end
end
