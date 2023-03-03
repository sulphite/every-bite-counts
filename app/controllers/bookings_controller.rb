class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit]

  def index
    @bookings = Booking.where(user: current_user)
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @donut = Donut.find(params[:donut_id])
    @booking.user = current_user
    @booking.donut = @donut
    if @booking.time_from < @booking.time_to
      if @booking.save
        redirect_to bookings_path
      else
        render :new, status: :unprocessable_entity
      end
    end
  end

  def edit
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:time_from, :time_to)
  end
end
