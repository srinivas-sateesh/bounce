class AddIndexToComments < ActiveRecord::Migration
  def change
    add_column :comments, :user, :string
    add_index :comments, :user
    add_column :comments, :post, :string
    add_index :comments, :post
  end
end
