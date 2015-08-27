module Account
  class BikesController < ApplicationController
    def index
      @bikes = Bike.where(user_id: current_user)
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

    def edit
      @bike = Bike.find(params[:id])
    end

    def update
      @bike = Bike.find(params[:id])
      @bike.update(bike_params)

    end

    private

    def bike_params
      params.require(:bike).permit(:bike_category, :description, :price_per_day, :city, :picture, :comment)
    end
  end
end
