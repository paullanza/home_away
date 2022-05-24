class Expertise < ApplicationRecord
  has_many :users_expertises
  has_many :users, through: :users_expertises

  validates :name, presence: true
end
