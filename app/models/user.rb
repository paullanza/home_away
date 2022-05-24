class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :expertise
  has_many :messages
  has_many :chatrooms, through: :messages
  has_many :events
  has_many :participations
  validates :origin, :residence, :first_name, :last_name, presence: true
end
