class Post < ActiveRecord::Base

  belongs_to :user
  has_many :comments
  has_many :likes

  mount_uploader :image, ImageUploader

  with_options :if => :text_post_type? do |post|
    post.validates :title, :presence => true,
              :length => { :within => 1..255 }
    post.validates :body, :presence => true
  end

  with_options :if => :image_post_type? do |post|
    post.validates :image, :presence => true
  end

  with_options :if => :quote_post_type? do |post|
    post.validates :quote, :presence => true,
              :length => { :within => 1..255 }
  end

  with_options :if => :link_post_type? do |post|
    post.validates :link, :presence => true,
      # TODO: Add support for mailto, news and ftp links.
      :format => { :with => /^(?:http(?:s)?:\/\/)?(?:www\.)?(?:[\.a-z0-9-]){1,}\.(?:[\.a-z0-9]){2,6}(?:\/(?:#?!?[\.a-z0-9_-]*\/?)*(?:\.[a-z0-9]{1,6})?(?:\?(?:[a-z0-9_]*=[:\.\/%a-z0-9_-]*&?)*)?)?$/i }
  end

  validates :user_id, :presence => true,
                      :numericality => {
                                         :only_integer => true,
                                         :greater_than_or_equal_to => 1
                                       }

  validates :draft, :presence => true

  validates :post_type, :presence => true,
                        :format => { :with => /^(text|image|quote|link|audio|video)$/ }



  def get_title
    if post_type == "text"
      title
    elsif post_type == "image"
      # TODO: Complete this
      nil
    elsif post_type == "quote"
      quote
    elsif post_type == "link"
      # TODO: Complete this
      nil
    end
  end

  def get_form_partial(post_type)
    if post_type == "text"
      "text_form"
    elsif post_type == "image"
      "image_form"
    elsif post_type == "quote"
      "quote_form"
    elsif post_type == "link"
      "link_form"
    end
  end

  private

  def text_post_type?
    post_type == "text"
  end

  def image_post_type?
    post_type == "image"
  end

  def quote_post_type?
    post_type == "quote"
  end

  def link_post_type?
    post_type == "link"
  end
end

end
