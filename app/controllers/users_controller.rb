class UsersController < ApplicationController
  def show
    @user = current_user
    @cards = @user.cards.paginate(page: params[:page])
  end
end
