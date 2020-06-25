class ActivitiesController < ApplicationController
	before_action :set_activity, only: [:show]
  skip_after_action :verify_policy_scoped, only: :index
  
  def index
    @trip = Trip.find(params[:trip_id])
		@activities = Activity.near(@trip.location, 20)
	
      if params[:search]&.fetch(:price_max).present?
        @price_max = params[:search][:price_max]
        @activities = @activities.where("price <= ?", @price_max)
      end

    @markers = @activities.map do |activity|
			{
        lat: activity.latitude,
        lng: activity.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { activity: activity }),
        info_price: "#{activity.price.round}€"				
      }
    end
  end


  def show
    @booking_activity = BookingActivity.new
    @trip = Trip.find(params[:trip_id])
    @activity = Activity.find(params[:id])
    @markers = [{ lat: @activity.latitude, lng: @activity.longitude, infoWindow: render_to_string(partial: "info_window", locals: { activity: @activity }),
    info_price: @activity.price }]
    @people = @trip.number_of_travellers
    @markers = [{ lat: @activity.latitude, lng: @activity.longitude }]
    authorize(@activity)
    @activityreservation = BookingActivity.find_by(activity: @activity, trip: @trip)
    @activity_review = ActivityReview.new
    @activity_reviews = @activity.activity_reviews
    @price = @activity.price * @people
    @average_rating = @activity_reviews.average(:rating)
  end

  private

  def set_activity
    @activity = Activity.find(params[:id])
    authorize_activity
  end

  def authorize_activity
    authorize(@activity)
  end

end
