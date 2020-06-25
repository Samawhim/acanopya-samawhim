class BookingActivity < ApplicationRecord
  belongs_to :activity
  belongs_to :trip

  has_many :activity_reviews, dependent: :destroy

  # validates :status, presence: true
end
