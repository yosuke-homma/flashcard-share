require "test_helper"

class PreloginPagesControllerTest < ActionDispatch::IntegrationTest
  
  #setupメソッドは各テストが実行される直前に実行される
  def setup 
    @base_title = "Flashcard Share"
  end

  
  test "should get root" do
    get root_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get about" do
    get prelogin_pages_about_url
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "should get help" do
    get prelogin_pages_help_url
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end
end
