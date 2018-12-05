class DogSerializer < ActiveModel::Serializer
  attributes :name, :breed, :age, :adopted
end
