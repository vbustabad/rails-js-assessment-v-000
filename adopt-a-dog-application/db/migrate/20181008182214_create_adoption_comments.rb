class CreateAdoptionComments < ActiveRecord::Migration[5.2]
  def change
    create_table :adoption_comments do |t|
      t.references :adoption, foreign_key: true
      t.references :comment, foreign_key: true
    end
  end
end
