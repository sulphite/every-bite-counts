class DonutsController < ApplicationController
  before_action :set_donut, only: [:show, :edit, :update, :destroy]

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
    @donut.user = current_user
    if @donut.save
      redirect_to root_path
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
    # NEED DELETE LINK IN SHOW PAGE. ADD LINES BELOW
    ########
    #<%= link_to "Delete", donut_path(@donut),
    #data: {turbo_method: :delete, turbo_confirm: "Are you sure?"} %>
    #end
    ##########
  end

  private

  def set_donut
    @donut = Donut.find(params[:id])
  end

  def donut_params
    params.require(:donut).permit(:title, :description, :flavour, :location, :wholeness, :photo)
  end
end
