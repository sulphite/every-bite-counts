class ReviewsController < ApplicationController
  before_action :set_booking, only: %i[new create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.booking = @booking
    @user = current_user.id
    # should @user be ... current_user.id ... or ... @booking.user_id
    if @review.save
      redirect_to root_path
      # redirects to root for now, until user show page is created
    else
      render :new, status: :unprocessable_entity
    end
  end

  ### MUST ADD REVIEW TO USER,



  private

  def set_booking
    @booking = Booking.find(params[:booking_id])
  end

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
