class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :require_login

  private
  def not_authenticated
    redirect_to login_path, alert: "Please login first"
  end

  def user_access? 
    if @user != current_user
      redirect_to company_path
    end
  end
end



class ActionController::TestCase
  include Sorcery::TestHelpers::Rails::Integration
  include Sorcery::TestHelpers::Rails::Controller
end