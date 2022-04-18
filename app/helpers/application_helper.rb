module ApplicationHelper

  #渡されたユーザーがcurrent userであればtrueを返す
  def current_user?(user)
    user && user == current_user
  end
end
