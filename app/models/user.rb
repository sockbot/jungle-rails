class User < ActiveRecord::Base
  has_secure_password

  Password_Min_Length = 8

  # validates_uniqueness_of :email
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password, presence: true, length: { minimum: Password_Min_Length }
  validates :password_confirmation, presence: true, length: { minimum: Password_Min_Length }
end
