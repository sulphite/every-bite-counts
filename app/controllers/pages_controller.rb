class PagesController < ApplicationController
  def home
    if params[:query].present?
      sql_query = <<~SQL
        donuts @@ :query
      SQL
      @donuts = Donut.where(sql_query, query: "%#{params[:query]}%")
      redirect_to donuts_path
    else
      @donuts = Donut.all
    end
  end
end
