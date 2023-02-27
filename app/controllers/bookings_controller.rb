class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit]
  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @donut = Donut.find(params[:donut_id])
    @booking.user = @current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
    redirect_to donut_path(@donut)
  end

  def edit
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:date_from, :date_to)
  end
end
