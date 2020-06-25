class FlatReviewsController < ApplicationController

  def create
    @booking_flat = BookingFlat.find(params[:flats_booking_id]) #je ne comprends pas
    @flat_review = FlatReview.new(flat_review_params)
    authorize_flat_review
    @flat_review.user = current_user
    @flat_review.booking_flat = @booking_flat
    if @flat_review.save
      flash[:notice] = "Votre commentaire a bien été créé"
      redirect_to trips_path
    else
      flash[:alert] = "une erreur s'est produite, veuillez retenter"
      redirect_to trips_path
    end
  end

 private

  def flat_review_params
    params.require(:flat_review).permit(:content, :rating, :booking_flat_id, :user_id)
  end
  
  def authorize_flat_review
    authorize(@flat_review)
  end

end
