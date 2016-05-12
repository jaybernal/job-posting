class SessionsController < ApplicationController
  skip_before_action :require_login, except: [:destroy]
  def new
  end

  def create
    if @user = login(params[:email], params[:password])
      if @user
        redirect_back_or_to users_path, notice: "Logged in Successfully"
      else
        flash.now[:alert] = "Login Failed"
        render :new
      end
    end
  end

  def destroy
    logout
    redirect_to users_path, notice: "Logged Out!"
  end
end
