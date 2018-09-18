class Dog < ApplicationRecord
  belongs_to :owner

  validates :name, presence: true
  validates :age, numericality: { only_integer: true }
  validates :breed, presence: true
  validates :traits, presence: true
  validates :weight, numericality: { only_integer: true }

  def self.names_in_alphabetical_order
    self.all.order(name: :asc)
  end

  def self.breeds_in_alphabetical_order
    self.all.order(breed: :asc)
  end

  def self.small_sized_dogs
     where("weight < 20")
  end

  def self.medium_sized_dogs
    where("weight >= 35 AND weight < 60")
  end

  def self.large_sized_dogs
    where("weight > 60")
  end

  def self.puppies
    where("age <= 1")
  end

  def self.adult_dogs
    where("age > 1 AND age < 6")
  end

  def self.senior_dogs
    where("age >= 6")
  end

end
