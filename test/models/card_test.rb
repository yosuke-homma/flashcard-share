require "test_helper"

class CardTest < ActiveSupport::TestCase
  
  def setup
    @user = users(:one)
    @card = @user.cards.build(word: "Word", type: "", 
                      meaning: "a single distinct meaningful element of speech or writing, used with others (or sometimes alone) to form a sentence and typically shown with a space on either side when written or printed.",
                      example: "I don't like the word unofficial.",
                      user_id: @user.id)
  end

  test "should be valid" do
    assert @card.valid?
  end

  test "user id should be present" do
    @card.user_id = nil
    assert_not @card.valid?
  end

  test "word should be present" do
    @card.word = "   "
    assert_not @card.valid?
  end

  test "order should be most recent first" do
    assert_equal cards(:most_recent), Card.first
  end
end
