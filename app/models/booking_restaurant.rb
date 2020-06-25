class BookingRestaurant < ApplicationRecord
  belongs_to :restaurant
  belongs_to :trip

  has_many :restaurant_reviews, dependent: :destroy

  # validates :status, presence: true
end
