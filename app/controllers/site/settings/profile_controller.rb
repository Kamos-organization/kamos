class Site::Settings::ProfileController < Site::ApplicationController
  def show
  end

  def edit
  end

  def update
    if current_user.update_attributes(user_params)
      redirect_to settings_profile_show_path, notice: t(:updated_profile)
    else
      redirect_to settings_profile_edit_path, notice: t(:unupdated_profile), alert: current_user.errors.full_messages
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :gender, :graduate)
  end
end
