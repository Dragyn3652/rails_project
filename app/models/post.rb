class Post < ActiveRecord::Base

  belongs_to :user
  has_many :comments
  has_many :likes

 validate :image_or_text

  def self.iterate_every(step, starting=0)
    every = all
    total = every.length - 1
    (starting..total).step(step) { |i| yield every[i] }
  end

  def self.all
    super.order created_at: :desc
  end

  def has_image?
    image_uri && !image_uri.empty?
  end

  def has_text?
    text && !text.empty?
  end

  def image_or_text
    if !has_text? && !has_image?
      errors.add :image_or_text, "must exist."
    end
  end

  def formatted_time
    created_at.strftime("%b %-d, %Y")
  end
end
