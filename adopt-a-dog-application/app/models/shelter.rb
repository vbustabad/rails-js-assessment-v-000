class Shelter < ActiveRecord::Base
  has_many :dogs
  has_many :owners, through: :dogs
end
