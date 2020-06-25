class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :trips, dependent: :destroy

  has_many :flat_reviews, dependent: :destroy
  has_many :restaurant_reviews, dependent: :destroy
  has_many :activity_reviews, dependent: :destroy

  validates :first_name, presence: true
  validates :last_name, presence: true
end
