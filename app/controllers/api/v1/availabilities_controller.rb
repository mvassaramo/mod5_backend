class Api::V1::AvailabilitiesController < ApplicationController

  def index
    @availabilities = Availability.all
    render json: @availabilities
  end

  def show
    @availability = Availability.find(params[:id])
    render json: @availability
  end

  private

  def availability_params
    params.require(:availability).permit(:stylist_listing_id, :time, :date, :booked)
  end

end
