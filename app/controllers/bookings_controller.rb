class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit]
  def show
    # @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = @current_user
    # get id off the donut from the params
    # get instance of dognut
    # @booking.donut =
    @booking.save
    redirect_to booking_path(@booking)
  end

  def edit
    # @booking = Booking.find(params[:id])
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:date_from, :date_to)
  end
end
