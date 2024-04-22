class AddParentPostIdToPosts < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :parent_post_id, :bigint
    add_foreign_key :posts, :posts, column: :parent_post_id
  end
end
