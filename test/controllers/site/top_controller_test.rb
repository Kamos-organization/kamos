require 'test_helper'

class Site::TopControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get site_top_index_url
    assert_response :success
  end

end
