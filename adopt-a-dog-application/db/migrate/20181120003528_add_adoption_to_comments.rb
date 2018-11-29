class AddAdoptionToComments < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :adoption, foreign_key: true
  end
end
