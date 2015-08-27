class BikesController < ApplicationController
  def index
    @bikes = Bike.where("city LIKE '%#{params[:city]}%'")
  end

  def show
    @bike = Bike.find(params[:id])
  end

  private

  def bike_params
    params.require(:bike).permit(:bike_category, :description, :price_per_day, :city, :picture)
  end
end
