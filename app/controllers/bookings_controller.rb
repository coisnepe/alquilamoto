class BookingsController < ApplicationController
  def index
    # @bookings =  Booking.where(user_id: params[:user_id])

  end

  def show
    @booking = Booking.find(params[:id])
    @bike = Bike.find(@booking.bike_id)
    @user = User.find(@bike.user_id)
  end

  def new
  end

  def create
  end
end
