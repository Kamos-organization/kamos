require 'test_helper'

class AlcoholControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get alcohol_index_url
    assert_response :success
  end

  test "should get show" do
    get alcohol_show_url
    assert_response :success
  end

  test "should get review" do
    get alcohol_review_url
    assert_response :success
  end

end
