class Owner < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :phone_number, presence: true
  validates :email_address, uniqueness: true
  validates :physical_address, presence: true
end
