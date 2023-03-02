class DonutsController < ApplicationController
  before_action :set_donut, only: [:show, :edit, :update, :destroy]

  def index
    @donuts = Donut.all

    @markers = @donuts.geocoded.map do |donut|
      {
        lat: donut.latitude,
        lng: donut.longitude
      }
    end
  end

  def show
    @booking = Booking.new
    @wholenessdata = [["uneaten", @donut.wholeness], ["eaten", 100 - @donut.wholeness]]

    @markers = [{
        lat: @donut.latitude,
        lng: @donut.longitude
      }]
  end

  def new
    @donut = Donut.new
  end

  def create
    @donut = Donut.new(donut_params)
    @donut.user = current_user
    if @donut.save
      redirect_to donut_path(@donut)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @donut.update(donut_params)
    redirect_to donut_path(@donut)
  end

  def destroy
    @donut.destroy
    redirect_to donuts_path
  end

  private

  def set_donut
    @donut = Donut.find(params[:id])
  end

  def donut_params
    params.require(:donut).permit(:title, :description, :flavour, :location, :wholeness, :price, :photo)
  end
end
