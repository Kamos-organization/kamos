class Site::Settings::NotificationController < ApplicationController
  def show
  end

  def update
    user = current_user
    user.update_attributes(user_parameters)
    if user.save!
      flash[:notice] = t(:updated_profile)
      redirect_to settings_profile_show_path
    else
      flash.now[:alert] = t(:unupdated_user)
      render action: :unupdated_profile
    end
  end

  private

  def user_parameters
    params.require(:user).permit(:notification_1, :notification_2, :notification_3)
  end
end
