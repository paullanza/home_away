class Event < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :participations, dependent: :destroy
  validates :title, uniqueness: true
  validates :title, :date, :location, :address, :starting_time, :ending_time, :description, :category, :user, presence: true
  validates :description, length: { minimum: 25 }

  # Cloudinary
  has_one_attached :photo

  # Geocoder (Mapbox)
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def short_desc
    max_char = 37
    "#{description[0..max_char]}#{description.length > max_char ? '...' : ''}"
  end

  def short_month
    max_char = 2
    "#{date.strftime('%B')[0..max_char]}"
  end
end
