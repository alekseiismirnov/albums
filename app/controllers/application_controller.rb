# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end

  def user_not_authorized
    flash[:error] = "You don't have access to this section."
    redirect_back(fallback_location: root_path)
  end
end
