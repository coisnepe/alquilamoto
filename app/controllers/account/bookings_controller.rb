module Account
  class BookingsController < ApplicationController

    def index
      # @bookings = Booking.where(owner: current_user)
      @bookings = Booking.all
    end

    def show
      # TODO Show a selected booking
    end

  end
end
