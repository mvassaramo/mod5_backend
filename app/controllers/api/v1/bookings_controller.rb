class Api::V1::BookingsController < ApplicationController

  def index
    @bookings = Booking.all
    render json: @bookings
  end

  def show
    @booking = Booking.find(params[:id])
    render json: @booking
  end

  def new
    @booking = Booking.new
    render json: @booking
  end

  def create
    @booking = Booking.new(booking_params)
      if @booking.save
        render json: @booking
      else
        render json: @booking.errors
      end
  end

  def get_info
    booking = Booking.find(params[:booking_id])

    info = {
      'customer_name' => booking.user.name,
      'customer_id' => booking.user.id,
      'date' => booking.availability.date,
      'time'=> booking.availability.time,
      'stylist_name' => booking.availability.stylist_listing.user.name,
      'stylist_id' => booking.availability.stylist_listing.user.id
    }

    render json: info.to_json
  end

  private

  def booking_params
    params.require(:booking).permit(:availability_id, :user_id)
  end


end
