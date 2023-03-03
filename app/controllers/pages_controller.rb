class PagesController < ApplicationController
  def home

      @donuts = Donut.all

  end
end
