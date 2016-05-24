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
    # TODO: users probably shouldn't be able to see each other except in special
    # circumstances
    @user = User.find(params[:id])
  end

  def index
    # TODO: users probably shouldn't be able to access this index except in
    # special circumstances
    @users = User.all
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
