require "test_helper"

class PreloginPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get root" do
    get root_url
    assert_response :success
  end

  test "should get about" do
    get prelogin_pages_about_url
    assert_response :success
  end

  test "should get help" do
    get prelogin_pages_help_url
    assert_response :success
  end
end
