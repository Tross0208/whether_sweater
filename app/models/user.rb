class User < ApplicationRecord
  validates :email, uniqueness: true, presence: true
  validates_presence_of :password_digest

  has_secure_password

  def valididate_password
    password == password_confirmation
  end

end
