class User < ApplicationRecord
  has_secure_password
  has_one :owner

  validates :name, uniqueness: true
  validates :email, uniqueness: true
  validates :password_digest, uniqueness: true
  validates :admin, inclusion: { in: [true, false] }
end
