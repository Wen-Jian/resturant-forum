class Commment < ApplicationRecord

  belongs_to :user
  belongs_to :blog

  validates_presence_of :commenter, :user_id, :blog_id

end
