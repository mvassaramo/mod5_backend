class Api::V1::BookingsController < ApplicationController

  def index
    @bookings = Booking.all
    render json: @bookings
  end
end
