class User < ApplicationRecord
  has_secure_password

  validates :email, presence: :true
  validates :email, uniqueness: :true

  def self.find_or_create_by_omniauth(auth_hash)
    oauth_email = auth_hash['info']['email']
    if user = User.find_by(email: oauth_email)
      return user
    else
      user = User.create(email: oauth_email, password: SecureRandom.hex)
    end
  end
end
