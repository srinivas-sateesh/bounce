class RemoveIndexToComments < ActiveRecord::Migration
  def change
    remove_index :comments, :user
    remove_column :comments, :user, :string
    remove_index :comments, :post
    remove_column :comments, :post, :string
  end
end
