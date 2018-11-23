class Adoption < ApplicationRecord
  belongs_to :owner
  belongs_to :dog
  has_many :comments

  validates_uniqueness_of :owner, :dog
end
