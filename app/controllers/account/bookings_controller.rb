module Account
  class BookingsController < ApplicationController

    def index
      @bookings = Bookings.all.where("owner LIKE '%#{current_user}%'")
    end

    def show
    end

  end
end
