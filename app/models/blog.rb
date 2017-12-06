class Blog < ApplicationRecord

  belongs_to :user
  has_many :blogs, foreign_key: "blog_id"
  has_many :comments, foreign_key: "blog_id"
  has_many :likes, foreign_key: "blog_id"

end
