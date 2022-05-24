class Event < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :participations
  validates :title, uniqueness: true
  validates :title, :date, :location, :description, :category, presence: true
  validates :descritpion, length: { minimum: 25 }
end
