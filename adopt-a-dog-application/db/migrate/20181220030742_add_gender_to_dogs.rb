class AddGenderToDogs < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :gender, :string
  end
end
