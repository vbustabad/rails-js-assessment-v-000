class Adoption < ApplicationRecord
  belongs_to :owner
  belongs_to :dog

  validates_uniqueness_of :owner, :dog
end
