class Owner < ApplicationRecord
  belongs_to :user
  has_one :adoption

  validates :name, presence: true
  validates :phone_number, presence: true
  validates :email_address, uniqueness: true
  validates :physical_address, presence: true
end
