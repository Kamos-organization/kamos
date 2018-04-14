class Site::Settings::PasswordController < ApplicationController
  def edit
    @minimum_password_length = 6
  end

  def update
    if current_user.update_with_password(password_params)
      sign_in(current_user, bypass: true)
      redirect_to settings_profile_show_path, notice: t(:updated_password)
    else
      redirect_to settings_password_edit_path, notice: t(:unupdated_profile), alert: current_user.errors.full_messages
    end
  end

  private

  def password_params
    params.require(:user).permit(:current_password, :password, :password_confirmation)
  end
end
