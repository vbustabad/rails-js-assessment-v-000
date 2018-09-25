class CreateAdoptions < ActiveRecord::Migration[5.2]
  def change
    create_table :adoptions do |t|
      t.references :owner, foreign_key: true
      t.references :dog, foreign_key: true

      t.timestamps
    end
  end
end
