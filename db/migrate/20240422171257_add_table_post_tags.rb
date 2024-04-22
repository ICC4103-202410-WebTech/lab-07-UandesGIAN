class AddTablePostTags < ActiveRecord::Migration[7.1]
  def change
    create_table :post_tags do |t|
      t.belongs_to :tag, null: false
      t.belongs_to :post, null: false

      t.timestamps
    end
  end
end
