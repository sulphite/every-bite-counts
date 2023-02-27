class DonutController < ApplicationController
  def index
    @donuts = Donut.all
  end

  def show
    @donut = Donut.find
  end
end
