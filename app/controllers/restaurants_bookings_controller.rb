class RestaurantsBookingsController < ApplicationController
    def create
		@restaurant = Restaurant.find(params[:restaurant_id])
		@booking_restaurant = BookingRestaurant.new(booking_params)
        @booking_restaurant.restaurant = @restaurant
        @booking_restaurant.status = true
        authorize(@booking_restaurant)
        @trip = @booking_restaurant.trip
	    @booking_restaurant.save
        flash[:success] = "Votre réservation a bien été effectuée"
        redirect_to trip_restaurants_path(@trip, active: 'restaurants' )
	end

    private

    def booking_params
        params.require(:booking_restaurant).permit(:trip_id, :start_date, :end_date)
    end

    def authorize_booking_restaurants
        authorize(@booking_restaurant)
    end

  end
  
