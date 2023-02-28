class DonutsController < ApplicationController
  before_action :set_donut, only: [:show, :destroy]

  def index
    @donuts = Donut.all
  end

  def show

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

  def destroy

  end

  private

  def set_donut
    @donut = Donut.find(params[:id])
  end

  def donut_params
    params.require(:donut).permit(:title, :description, :flavour, :location, :wholeness, :photo)
  end
end
