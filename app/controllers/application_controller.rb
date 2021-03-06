class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    user_personal_path(current_user.id)
  end

  def after_sign_out_path_for(resource)
    root_path
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :name, :introduction, :profile_image, :birthplace_id, :sex_id, :booze_id, :prefecture_id, :team_id, :rival_id, :manager_id, :athlete, :favorite_id, :brand, :sake_id])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:name])
  end
end
