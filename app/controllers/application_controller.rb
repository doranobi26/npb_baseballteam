class ApplicationController < ActionController::Base
  def after_sing_in_path_for(resource)
    user_path(current_user.id)
  end

  def after_sing_out_path_for(resource)
    root_path
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :name])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:name])
  end

end
