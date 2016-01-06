class AddYoutubeToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :youtube_embed_id, :text
  end
end
