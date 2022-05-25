class Participation < ApplicationRecord
  belongs_to :user
  belongs_to :event

  validates :user_id, presence: true, uniqueness: { scope: :event_id }
end
