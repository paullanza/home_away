class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # validations
  has_many :users_expertises
  has_many :expertises, through: :users_expertises
  has_many :messages
  has_many :chatrooms, through: :messages
  has_many :events
  has_many :participations
  validates :origin, :residence, :first_name, :last_name, presence: true
  # has many chatroom that tyou can access typing user.chatroom_as_user1 or 2
  has_many :chatrooms_as_user1, class_name: "Chatroom", foreign_key: :user1_id
  has_many :chatrooms_as_user2, class_name: "Chatroom", foreign_key: :user2_id
  # Cloudinary
  # has_one_attached :photo
end
