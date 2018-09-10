class CreateOwners < ActiveRecord::Migration[5.2]
  def change
    create_table :owners do |t|
      t.string :name
      t.integer :phone_number
      t.string :email_address
      t.string :physical_address

      t.timestamps
    end
  end
end
