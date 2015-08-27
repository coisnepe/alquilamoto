class BookingsController < ApplicationController


  def index
    @bookings = Booking.where(customer: current_user) #this method is not nested in bikes
    # @bike = Bike.find(params[:bike_id])
    # @booking = Booking.where(bike_id: @bike.id)
  end

  def show
    @booking = Booking.find(params[:id])
    @bike = Bike.find(@booking.bike_id)
    @user = User.find(@bike.user_id)
  end

  def new
    @booking = Booking.new
    @bike = Bike.find(params[:bike_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @bike = Bike.find(params[:bike_id])
    @booking.total_price = 1000
    @booking.bike_id = @bike.id
    @booking.user_id = current_user.id
    # @booking.total_price = TODO
    @booking.save

    redirect_to bike_booking_path(@booking.bike_id,@booking)

  end

  private

  def booking_params
    params.require(:booking).permit(:date_begin, :date_end, :total_price, :bike_id, :user_id)
  end
end
