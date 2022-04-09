class PreloginPagesController < ApplicationController
  def home
    if user_signed_in?
      @card = current_user.cards.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def about
  end

  def help
  end
end
