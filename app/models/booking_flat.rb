class BookingFlat < ApplicationRecord
  belongs_to :flat
  belongs_to :trip
  
  has_many :flat_reviews, dependent: :destroy

  # validates :status, presence: true

  def display_review_form(user)
    (self.end_date < Date.today) && (self.reviews.find_by(user: user).nil?)
  end

end
