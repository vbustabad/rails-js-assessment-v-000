class Adoption < ApplicationRecord
  belongs_to :owner
  belongs_to :dog
  has_and_belongs_to_many :comments

  validates_uniqueness_of :owner, :dog
end
