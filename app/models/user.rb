class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :resturants, foreign_key: "user_id"
  has_many :blogs, foreign_key: "user_id"
  has_many :comments, foreign_key: "user_id"
  has_many :likes, foreign_key: "user_id"
  has_many :evaluations, foreign_key: "user_id"


end
