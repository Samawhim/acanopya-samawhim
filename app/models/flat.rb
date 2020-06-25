class Flat < ApplicationRecord
  has_many :trips, through: :booking_flats
  has_many :booking_flats
  has_many_attached :photos
  
  has_many :booking_flats, dependent: :destroy
  has_many :flat_reviews,  through: :booking_flats

  validates :name, presence: true
  validates :address, presence: true
  validates :price, presence: true
  validates :capacity, presence: true
  validates :description, presence: true, length: { minimum: 10 }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def average_rating
    return 5 if flat_reviews.empty?
    sum = 0
    flat_reviews.each do |flat_review|
      sum += flat_review.rating
    end
    @average_rating = sum / flat_reviews.count
  end

end
