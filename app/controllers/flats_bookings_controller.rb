class FlatsBookingsController < ApplicationController
  
    def create
		@flat = Flat.find(params[:flat_id])
		@booking_flat = BookingFlat.new(booking_params)
        @booking_flat.flat = @flat
        @booking_flat.status = true
        authorize_booking_flats
        @trip = @booking_flat.trip
		@booking_flat.save
		flash[:success] = "Votre logement est maintenant réservé"
        redirect_to trip_flats_path(@trip)
	end

    private

    def booking_params
        params.require(:booking_flat).permit(:trip_id, :start_date, :end_date, :status_reservation)
    end

    def authorize_booking_flats
        authorize(@booking_flat)
    end

  end
  