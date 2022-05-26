class Event < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :participations, dependent: :destroy
  validates :title, uniqueness: true
  validates :title, :date, :location, :description, :category, :user, presence: true
  validates :description, length: { minimum: 25 }

  # Cloudinary
  has_one_attached :photo
end
