class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def after_sign_out_path_for(resource)
    root_url
  end

  def after_sign_in_path_for(resource)
    mypage_url(resource)
  end

  private

  def sign_in_required
    redirect_to new_user_session_url unless user_signed_in?
  end

end
