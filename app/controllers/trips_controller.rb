class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :update, :edit, :destroy]

    def index
        @trips = policy_scope(Trip).order(created_at: :desc)
        @trip = Trip.new
        @flats = @trip.flats
        @booking_flats = @trip.booking_flats
        @restaurants = @trip.restaurants
        @booking_restaurants = @trip.booking_restaurants
        @activities = @trip.activities
        @booking_activities = @trip.booking_activities
    end

    def show
        @trip = Trip.find(params[:id])
        @duration = @trip.end_date - @trip.start_date
        @booking_flats = @trip.booking_flats
        @flats = @trip.flats
        @booking_restaurants = @trip.booking_restaurants
        @restaurants = @trip.restaurants
        @booking_activities = @trip.booking_activities
        @activities = @trip.activities
        @flat_review = FlatReview.new
        @restaurant_review = RestaurantReview.new
        @activity_review = ActivityReview.new
        restaurant_markers = @trip.restaurants.map do |restaurant|
          {
            lat: restaurant.latitude,
            lng: restaurant.longitude,
            infoWindow: render_to_string(partial: "restaurants/info_window", locals: { restaurant: restaurant }),
            info_price: "R"                
          }
        end
        activity_markers = @trip.activities.map do |activity|
          {
            lat: activity.latitude,
            lng: activity.longitude,
            infoWindow: render_to_string(partial: "activities/info_window", locals: { activity: activity }),
            info_price: "A"                
          }
        end
        flat_markers = @trip.flats.map do |flat|
          {
            lat: flat.latitude,
            lng: flat.longitude,
            infoWindow: render_to_string(partial: "flats/info_window", locals: { flat: flat }),
            info_price: "H"                
          }
        end
        @markers = [restaurant_markers, activity_markers, flat_markers].flatten
    end

    def create
        @trip = current_user.trips.new(trip_params)
        authorize_trip
        if @trip.save
            flash[:notice] = "Votre voyage a bien été créé"
            redirect_to trip_flats_path(@trip.id)
        else
            flash[:alert] = "Votre voyage ne s'est pas bien créé"
            redirect_to root_path
        end
    end

    def edit
    end

    def update
        @trip.update(trip_params)
        redirect_to trip_path(@trip)
    end

    def destroy
        @trip.destroy
        redirect_to trips_path
    end

    private

    def authorize_trip
        authorize(@trip)
    end

    def trip_params
        params.require(:trip).permit(:name, :location, :start_date, :end_date, :number_of_travellers)
    end

    def set_trip
        @trip = Trip.find(params[:id])
        authorize_trip
    end
end
