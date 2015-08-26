class BikesController < ApplicationController
  def index
    @bikes = Bike.where("city LIKE '%#{params[:city]}%'")
  end

  def show
    @bike = Bike.find(params[:id])
  end

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(bike_params)
    @bike.owner = current_user
    @bike.save
    redirect_to bike_path(@bike)
  end

  private

  def bike_params
    params.require(:bike).permit(:bike_category, :description, :price_per_day, :city, :picture)
  end
end
