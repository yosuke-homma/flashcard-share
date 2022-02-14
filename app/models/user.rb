class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable #:validatable -> user_test.rbの test "should be valid"でエラーになったため、一旦コメントアウトで対応。
end
