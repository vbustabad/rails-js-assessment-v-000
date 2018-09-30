class AddAdoptedToDogs < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :adopted, :boolean, null: false, default: false
  end
end
