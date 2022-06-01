class Message < ApplicationRecord
  belongs_to :user
  belongs_to :chatroom

  validates :content, presence: true, length: { minimum: 1 }
  validates :user_id, presence: true
  validates :chatroom_id, presence: true

  def sender?(a_user)
    user.id == a_user.id
  end

end
