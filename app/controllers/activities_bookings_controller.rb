class ActivitiesBookingsController < ApplicationController
  
    def create
		@activity = Activity.find(params[:activity_id])
		@booking_activity = BookingActivity.new(booking_params)
        @booking_activity.activity = @activity
        @booking_activity.status = true
        authorize(@booking_activity)
        @trip = @booking_activity.trip
		@booking_activity.save
        flash[:success] = "Votre activité est maintenant réservée"
        redirect_to trip_activities_path(@trip, active: 'activities')
	end

    private

    def booking_params
        params.require(:booking_activity).permit(:trip_id, :start_date, :status_reservation)
    end

    def authorize_booking_activities
        authorize(@booking_activity)
    end

  end
  
