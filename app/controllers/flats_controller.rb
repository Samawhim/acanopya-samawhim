class FlatsController < ApplicationController
	before_action :set_flat, only: [:show]
	skip_after_action :verify_policy_scoped, only: :index

	def index
		@trip = Trip.find(params[:trip_id])
		@flats = Flat.near(@trip.location, 20)

		if params[:search]&.fetch(:price_min).present?
			@price_min = params[:search]&.fetch(:price_min)
			@flats = @flats.where("price >= ?", @price_min)
		end

		if params[:search]&.fetch(:price_max).present?
			@price_max = params[:search]&.fetch(:price_max)
			@flats = @flats.where("price <= ?", @price_max)
		end

		@markers = @flats.map do |flat|
			{
				lat: flat.latitude,
				lng: flat.longitude,
				infoWindow: render_to_string(partial: "info_window", locals: { flat: flat }),
				info_price: "#{flat.price.round}€"				
			}
		end
	end

	def show
		@booking_flat = BookingFlat.new
		@flat = Flat.find(params[:id])
		@trip = Trip.find(params[:trip_id])
		@markers = [{ lat: @flat.latitude, lng: @flat.longitude, infoWindow: render_to_string(partial: "info_window", locals: { flat: @flat }),
		info_price: @flat.price }]
		@duration = @trip.end_date - @trip.start_date
		@price = @flat.price * @duration
		authorize(@flat)
		@flatreservation = BookingFlat.find_by(flat: @flat, trip: @trip)
		@flat_review = FlatReview.new
		@flat_reviews = @flat.flat_reviews
		@average_rating = @flat_reviews.average(:rating)
	end

	private 

	def set_flat
		@flat = Flat.find(params[:id])
		authorize_flat
	end 

	def authorize_flat
		authorize(@flat)
	end


end
