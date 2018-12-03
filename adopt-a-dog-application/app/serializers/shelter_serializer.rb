class ShelterSerializer < ActiveModel::Serializer
  attributes :name, :physical_address
  has_many :dogs
end