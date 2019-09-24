class User < ActiveRecord::Base
  has_secure_password

  PASSWORD_MIN_LENGTH = 8

  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password, presence: true, length: { minimum: PASSWORD_MIN_LENGTH }
  validates :password_confirmation, presence: true, length: { minimum: PASSWORD_MIN_LENGTH }

  def self.authenticate_with_credentials email, password
    user = User.find_by(email: email)
    if user && user.authenticate(password)
      user
    else
      nil
    end
  end

end
