module Account
  class BookingsController < ApplicationController

    def index
      # @bookings = Booking.where(owner: current_user)
      @bookings = Booking.all
    end

    def owner_index
      @bikes = Bike.where(user_id: current_user)
      @bookings = []
      @bikes.each do |bike|
        bike.bookings.each do |booking|
          @bookings << booking
        end
      end
    end

    def renter_index
      @bookings = Booking.where(user_id: current_user) # user_id equivalent to customer in DB
    end

    def show
      raise
    end

  end
end
