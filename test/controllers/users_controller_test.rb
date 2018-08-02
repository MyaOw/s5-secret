require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get users_home_url
    assert_response :success
  end

  test "should get secret_page" do
    get users_secret_page_url
    assert_response :success
  end

end
