class User < ActiveRecord::Base
  has_many :posts
  has_many :comments, through: :posts
  has_many :likes, through: :posts
end
