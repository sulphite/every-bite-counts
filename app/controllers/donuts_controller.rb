class DonutsController < ApplicationController
  before_action :set_donut, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      sql_query = <<~SQL
        donuts.title @@ :query
        OR donuts.location @@ :query
        OR donuts.flavour @@ :query
      SQL
      @donuts = Donut.where(sql_query, query: "%#{params[:query]}%")
    else
      @donuts = Donut.all
    end

    @markers = @donuts.geocoded.map do |donut|
      {
        lat: donut.latitude,
        lng: donut.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {donut: donut}),
        marker_html: render_to_string(partial: "marker")
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
    @donut.price = (@donut.price / 100 * @donut.wholeness)
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
