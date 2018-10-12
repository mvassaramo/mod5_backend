class Api::V1::CustomerBookingsController < ApplicationController

  def index
    @customer_bookings = CustomerBooking.all
    render json: @customer_bookings
  end

end
