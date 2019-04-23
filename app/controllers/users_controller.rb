class UsersController < ApplicationController

  before_action :authorise_user, :except => [:index]

  def index
    @users = User.all
  end

  def show
    @user = User.find params[:id]
  end

  def new
    @user = User.new
  end


  def create
  user = User.create(user_params)
  if @user.save
    flash[:notice] = 'User was successfully created.'
    redirect_to user_path(user)
  else
    flash.now[:error] = 'Could not create user.'
    render 'new'
  end
end


  def edit
    @user = User.find params[:id]
  end
  
  def update
    user = User.find params[:id]
    user.update user_params
    redirect_to user_path(user.id)
  end

  def destroy
    user = User.find params[:id]
    user.destroy
    redirect_to users_path
  end

  private
  def user_params
    params.require(:user).permit(:name, :password_digest, :email)
  end
end
