require 'test_helper'

class Site::MypageControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get site_mypage_show_url
    assert_response :success
  end

end
