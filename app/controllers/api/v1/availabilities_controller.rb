class Api::V1::AvailabilitiesController < ApplicationController

  def index
    @availabilities = Availability.all
    render json: @availabilities
  end

  def show
    @availability = Availability.find(params[:id])
    render json: @availability
  end

  def edit
    @availability = Availability.find(params[:id])
  end

  def update
    @availability = Availability.find(params[:id])
    @availability.update(availability_params)
    if @availability.save
      render json: @availability
    else
      render json: @availability.errors
    end
  end

  private

  def availability_params
    params.require(:availability).permit(:stylist_listing_id, :time, :date, :booked)
  end

end
