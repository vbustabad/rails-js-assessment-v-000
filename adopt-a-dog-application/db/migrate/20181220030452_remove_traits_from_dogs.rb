class RemoveTraitsFromDogs < ActiveRecord::Migration[5.2]
  def change
    remove_column :dogs, :traits, :text
  end
end
