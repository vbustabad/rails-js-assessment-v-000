class RemoveAdoptionsComments < ActiveRecord::Migration[5.2]
  def change
    drop_table :adoptions_comments
  end
end
