class CardsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :destroy]

  def create
    @cards = current_user.cards.build(card_params)
    if @cards.save
      flash[:success] = "Flashcard created!"
      redirect_to root_url
    else
      'prelogin_pages/home'
    end
  end

  def destroy
  end

  private

    def card_params
      params.require(:card).permit(:word, :word_type, :meaning, :example)
    end
end
