class User < ApplicationRecord
  has_secure_password
  has_one :owner

  validates :name, uniqueness: true
  validates :password_field, uniqueness: true
  validates :admin, inclusion: { in: [true, false] }
end