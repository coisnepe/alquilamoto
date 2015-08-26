class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
    @bike = Bike.find(@booking.bike_id)
    @user = User.find(@booking.user_id)
  end

  def new
  end

  def create
  end
end
