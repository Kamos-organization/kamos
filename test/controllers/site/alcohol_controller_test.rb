require 'test_helper'

class Site::AlcoholControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get site_alcohol_show_url
    assert_response :success
  end

  test "should get review" do
    get site_alcohol_review_url
    assert_response :success
  end

end
