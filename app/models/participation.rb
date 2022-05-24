class Participation < ApplicationRecord
  belongs_to :user
  belongs_to :event

  validates :user_id, presence: true, uniqueness: true
  validates :event_id, presence: true, uniqueness: true
end
