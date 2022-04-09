require "test_helper"

class CardsControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @card = cards(:one)
  end

  test "test should redirect create when not logged in" do
    assert_no_difference 'Card.count' do
      post cards_path, params: { cards: { word: "MyText", word_type: "", meaning: "MyText", example: "MyText" } }
    end
    assert_redirected_to new_user_session_url
  end

  test "should redirect destroy when not logged in" do
    assert_no_difference 'Card.count' do
      delete card_path(@card)
    end
    assert_redirected_to new_user_session_url
  end
end
