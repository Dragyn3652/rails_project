class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :text
      t.string :image_uri
      t.text :tags
      t.integer :likes, default: 0

      t.timestamps null: false
    end
  end
end
