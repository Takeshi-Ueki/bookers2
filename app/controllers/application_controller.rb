class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:top, :about]

  before_action :configre_permitted_parametes, if: :devise_controller?

  def after_sign_in_path_for(rosource)
    user_path(current_user)
  end

  protected

  def configre_permitted_parametes
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
  end
end
