class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :handle, default: 'anonymous'
      t.string :profile_image_uri, default: 'assets/default-profile-image.jpg'

      t.timestamps null: false
    end
  end
end
