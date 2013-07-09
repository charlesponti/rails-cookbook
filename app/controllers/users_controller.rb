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
    @user.save ? redirect_to(users_path) : render('new')
  end

  def edit
  end

  def update
    # if params[:current_password]
    @user.update_attributes(params[:user])
  end

  def destroy
    @user.destroy
  end

  private
  def set_user
    @user = User.find(params[:id])
  end
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
