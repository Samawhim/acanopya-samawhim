class Trip < ApplicationRecord
  belongs_to :user

  has_many :booking_flats, dependent: :destroy
  has_many :flats, through: :booking_flats
  has_many :booking_activities, dependent: :destroy
  has_many :activities, through: :booking_activities
  has_many :booking_restaurants, dependent: :destroy
  has_many :restaurants, through: :booking_restaurants
  # validates :start_date, presence: true
  # validates :end_date, presence: true
  validates :number_of_travellers, presence: true
  # validates :location, presence: true
end
