class Dog < ApplicationRecord
  belongs_to :owner

  validates :name, presence: true
  validates :age, numericality: { only_integer: true }
  validates :breed, presence: true
  validates :traits, presence: true
  validates :weight, numericality: { only_integer: true }
end
