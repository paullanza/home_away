class Chatroom < ApplicationRecord
  has_many :messages

  # belong to user as user1 or user2
  belongs_to :user1, class_name: "User", foreign_key: :user1_id
  belongs_to :user2, class_name: "User", foreign_key: :user2_id
end
