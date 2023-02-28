class DonutsController < ApplicationController
  before_action :set_donut, only: [:show, :destroy]

  def index
    @donuts = Donut.all
  end

  def show
    @booking = Booking.new
  end

  def new
    @donut = Donut.new
  end

  def create
    @donut = Donut.new(donut_params)
    if @donut.save
      redirect_to donut_path(@donut)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy

  end
end


private

def set_donut
  @donut = Donut.find(params[:id])
end

def donut_params
  require(:donut).permit(:title, :description, :flavour, :location, :wholeness)
end
