class ApplicationController < ActionController::Base
  before_action :configuref_perameters, if: :devise_controller?

  private
  def configuref_perameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :occupation, :position])
  end

end
