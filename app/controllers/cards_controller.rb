class CardsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :destroy]
  before_action :corrent_user,       only: :destroy

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
    @card.destroy
    flash[:success] = "Flashcard deleted"
    redirect_to request.referrer || root_url
  end

  private

    def card_params
      params.require(:card).permit(:word, :word_type, :meaning, :example)
    end

    def corrent_user
      @card = current_user.cards.find_by(id: params[:id])
      redirect_to root_url if @card.nil?
    end
end
