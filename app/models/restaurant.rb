class Restaurant < ApplicationRecord

  CATEGORIES = ['Poisson', 'Monde', 'Italienne', 'Japonaise', 'Française']

  has_many :trips, through: :booking_restaurants
  has_many :booking_restaurants
  has_many_attached :photos

  has_many :booking_restaurants, dependent: :destroy
  has_many :restaurant_reviews,  through: :booking_restaurants

  validates :name, presence: true
  validates :address, presence: true
  validates :price, presence: true
  validates :category, presence: true
  validates :description, presence: true, length: { minimum: 10 }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def average_rating
    return 5 if restaurant_reviews.empty?
    sum = 0
    restaurant_reviews.each do |restaurant_review|
      sum += restaurant_review.rating
    end
    @average_rating = sum / restaurant_reviews.count
  end

end
