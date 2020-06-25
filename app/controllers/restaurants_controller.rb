class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show]
  skip_after_action :verify_policy_scoped, only: :index
  
  def index
    @trip = Trip.find(params[:trip_id])
    @restaurants = Restaurant.near(@trip.location, 20)

    if params[:search]&.fetch(:price_max).present?
      @price_max = params[:search][:price_max]
      @restaurants = @restaurants.where("price <= ?", @price_max)
    end

    if params[:search]&.fetch(:category).present?
      @category = params[:search][:category]
      @restaurants = @restaurants.where("category = ?", @category)
    end

    @markers = @restaurants.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { restaurant: restaurant }),
        info_price: "#{restaurant.price.round}€"				
      }
    end
  end

  def show
    @booking_restaurant = BookingRestaurant.new
    @trip = Trip.find(params[:trip_id])
    @restaurant = Restaurant.find(params[:id])
    @markers = [{ lat: @restaurant.latitude, lng: @restaurant.longitude, infoWindow: render_to_string(partial: "info_window", locals: { restaurant: @restaurant }),
    info_price: @restaurant.price }]
    @people = @trip.number_of_travellers
    @markers = [{ lat: @restaurant.latitude, lng: @restaurant.longitude }]
    @duration = @trip.end_date - @trip.start_date
		@price = @restaurant.price * @people
    authorize(@restaurant)
    @restaurantreservation = BookingRestaurant.find_by(restaurant: @restaurant, trip: @trip)
    @restaurant_review = RestaurantReview.new
    @restaurant_reviews = @restaurant.restaurant_reviews
    @average_rating = @restaurant_reviews.average(:rating)
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
    authorize_restaurant
  end

  def authorize_restaurant
		authorize(@restaurant)
	end

end
