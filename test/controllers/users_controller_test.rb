require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest

  #setupメソッドは各テストが実行される直前に実行される
  def setup 
    @base_title = "Flashcard Share"
  end

  test "should get new" do
    get signup_path
    assert_response :success
    assert_select "title", "Sign up | #{@base_title}"
  end
end
