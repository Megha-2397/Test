class RegistrationsController < Devise::RegistrationsController

  before_action :configure_permitted_parameters
  before_action :authenticate_user!, only: [:changed_password, :change_password]


  def change_password
    self.resource = current_user
  end

  def changed_password
    self.resource = current_user
    if resource.update_with_password(account_update_params)
      bypass_sign_in(resource)
      flash[:notice] = "Your Password Change successfully."
      redirect_to root_path
    else
      render 'change_password'
    end
  end

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
      user_params.permit(:email, :password, :password_confirmation, :first_name, :last_name)
    end
    devise_parameter_sanitizer.permit(:account_update) do |user_params|
      user_params.permit(:current_password, :password,
                         :password_confirmation, :email, :first_name, :last_name

      )
    end

  end

  def after_sign_up_path_for(resource)
    root_path
  end

end