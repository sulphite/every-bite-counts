class DonutController < ApplicationController
  def index
    @donuts = Donut.all
  end
end
