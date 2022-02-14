require "test_helper"

class UserTest < ActiveSupport::TestCase
  
  #setupメソッドに書かれた処理は、各テストが走る直前に実行される。
  #@userはインスタント変数だが、setupメソッド内で宣言しておけば、すべてのテスト内でこのインスタンス変数が使えるようになる。
  def setup
    @user = User.new(name: "Example User", email: "user@example.com")
  end

  test "should be valid" do
    assert @user.valid?
  end

end