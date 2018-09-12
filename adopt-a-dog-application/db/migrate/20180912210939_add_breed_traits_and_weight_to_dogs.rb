class AddBreedTraitsAndWeightToDogs < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :breed, :string
    add_column :dogs, :traits, :text
    add_column :dogs, :weight, :integer
  end
end
