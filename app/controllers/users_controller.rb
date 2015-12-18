class UsersController < ApplicationController
  # before_action :authorize, only: [:show]
  def index
    @users = User.all
  end
  def new
    @user = User.new
  end
  def create
    if User.new(user_params).save
      redirect_to users_path
    else
      redirect_to new_user_path
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to users_path(@user)
    else
      redirect_to :edit
    end
  end

  private
  def user_params
     params.require(:user).permit(:email, :handle, :profile_image_uri, :password,:password_confirmation)
   end
end
