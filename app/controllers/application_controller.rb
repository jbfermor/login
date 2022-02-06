class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nif, :name, 
      :surname1, :surname2, :address, :pc, :city, :province, 
      :phone1, :phone2, :email2, :suscriptor, :role_id])
  end
end
