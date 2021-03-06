class BikesController < ApplicationController
  def index
    @bikes = Bike.where("city LIKE '%#{params[:city]}%'")
        # Let's DYNAMICALLY build the markers for the view.
    @markers = Gmaps4rails.build_markers(@bikes) do |bike, marker|
      marker.lat bike.latitude
      marker.lng bike.longitude
    end
  end

  def show
    @bike = Bike.find(params[:id])

    @bike_coordinates = { lat: @bike.latitude, lng: @bike.longitude }

    # Let's DYNAMICALLY build the markers for the view.
    @markers = Gmaps4rails.build_markers(@bike) do |bike, marker|
    marker.lat bike.latitude
    marker.lng bike.longitude
    end
  end


  private

  def bike_params
    params.require(:bike).permit(:bike_category, :description, :price_per_day, :city, :picture)
  end
end
