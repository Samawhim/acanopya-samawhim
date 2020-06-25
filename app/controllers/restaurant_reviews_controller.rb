class RestaurantReviewsController < ApplicationController

  def create
    @booking_restaurant = BookingRestaurant.find(params[:restaurants_booking_id])
    @restaurant_review = RestaurantReview.new(restaurant_review_params)
    authorize_restaurant_review
    @restaurant_review.user = current_user
    @restaurant_review.booking_restaurant = @booking_restaurant
    if @restaurant_review.save
      flash[:notice] = "Votre commentaire a bien été créé"
      redirect_to trips_path
    else
      flash[:alert] = "une erreur s'est produite, veuillez retenter"
      redirect_to trips_path
    end
  end

  private

  def restaurant_review_params
    params.require(:restaurant_review).permit(:content, :rating, :booking_flat_id, :user_id)
  end
  
  def authorize_restaurant_review
    authorize(@restaurant_review)
  end
  
end
