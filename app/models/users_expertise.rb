class UsersExpertise < ApplicationRecord
  belongs_to :user
  belongs_to :expertise
  validates :user, :expertise, presence: true
end
