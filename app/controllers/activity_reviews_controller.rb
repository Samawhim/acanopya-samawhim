class ActivityReviewsController < ApplicationController

  def create
    @booking_activity = BookingActivity.find(params[:activities_booking_id]) #pb comprehension booking
    @activity_review = ActivityReview.new(activity_review_params)
    authorize_activity_review
    @activity_review.user = current_user
    @activity_review.booking_activity = @booking_activity
    if @activity_review.save
      flash[:notice] = "Votre commentaire a bien été créé"
      redirect_to trips_path
    else
      flash[:alert] = "une erreur s'est produite, veuillez retenter"
      redirect_to trips_path
    end
  end

  private

  def activity_review_params
    params.require(:activity_review).permit(:content, :rating, :booking_activity_id, :user_id) #pb comprehension booking
  end

  def authorize_activity_review
    authorize(@activity_review)
  end

end

