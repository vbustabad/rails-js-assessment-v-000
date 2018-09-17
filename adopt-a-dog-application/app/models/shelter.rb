class Shelter < ApplicationRecord
  has_many :dogs
  has_many :owners, through: :dogs

  validates :name, uniqueness: true
  validates :physical_address, uniqueness: true
end
