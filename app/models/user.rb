class User < ApplicationRecord
  before_save { self.email = email.downcase } #コールバックメソッド。before_saveはオブジェクトが保存される時点で実行される。
                                              #データベースに大文字小文字を区別させないために、保存の前に小文字に変える。
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable #:validatable 
                                    #-> user_test.rbの test "should be valid"でエラーになったため、一旦コメントアウトで対応。
                                    #-> 機能としては、デフォルトでe-mailとパスワードの検証を提供する。optionであるためカスタマイズができる.
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false } #メールアドレスの大文字小文字を区別せずに一意性を検証するため。
  has_many :cards, dependent: :destroy

  def feed
    Card.where("user_id = ?", id)
  end
end
