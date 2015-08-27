module Account
  class BookingsController < ApplicationController

    def index
      @bookings = Booking.where(customer: current_user)
    end

    def show
      # TODO Show a selected booking
    end

  end
end
