class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_back_or_to users_path, notice: "Create Login Successful"
    else 
      render :new
    end
  end

  def show

    @user = User.find(params[:id])
    user_access?

  end

  def index
    @users = User.all
    user_access?

  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
