class AddcolumnPosts < ActiveRecord::Migration
  def change
    add_column :posts, :user_id, :integer
    add_column :posts, :comment_id, :integer
  end
end
