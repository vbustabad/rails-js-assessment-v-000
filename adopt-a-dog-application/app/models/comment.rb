class Comment < ApplicationRecord
  has_and_belongs_to_many :adoptions
end
