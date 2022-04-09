class Card < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :word, presence: true
  #validates :word_type, presence: true
  validates :meaning, presence: true
  validates :example, presence: true
end
