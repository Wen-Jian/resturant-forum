class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

validates_presence_of :admin
  def admin?
      self.role == "admin"
  end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :resturants, foreign_key: "user_id"
  has_many :blogs, foreign_key: "user_id"
  has_many :comments, foreign_key: "user_id"
  has_many :likes, foreign_key: "user_id"
  has_many :evaluations, foreign_key: "user_id"



  validates_presence_of :name

       def first_name
         self.name.split.first
       end
       def last_name
         self.name.split.last_name
       end

  has_many :messages
  has_many :chatrooms, through: :messages
  validates :username, presence: true, uniqueness: true

end
