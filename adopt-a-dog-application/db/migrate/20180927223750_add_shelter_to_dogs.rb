class AddShelterToDogs < ActiveRecord::Migration[5.2]
  def change
    add_reference :dogs, :shelter, foreign_key: true
  end
end
