class Api::V1::StylistListingsController < ApplicationController

  def index
    @stylist_listings = StylistListing.all
    render json: @stylist_listings
  end

  def show
    @stylist_listing = StylistListing.find(params[:id])
    render json: @stylist_listing
  end

  def create
    @stylist_listing = StylistListing.new(stylist_listing_params)
    if @stylist_listing.save
      create_availabilities(@stylist_listing)
      services_params[:services].each do |service_id|
        StylistService.create(stylist_listing: @stylist_listing, service: Service.find(service_id))
      end
      render json: @stylist_listing
    else
      render json: @stylist_listing.errors
    end
  end

  def get_availabilities
    @stylist_listing = StylistListing.find(params[:stylist_listing_id])
    render json: @stylist_listing.availabilities
  end

  private

  def stylist_listing_params
    params.require(:stylist_listing).permit(:user_id, :first_name, :last_name, :tagline, :bio, :area, availabilities: [])
  end

  def services_params
    params.require(:stylist_listing).permit(services: [])
  end

  def create_availabilities(stylist)
    today = Date.today
    availabilities = []

      (0..6).to_a.each do |x|
        availabilities.push({date: today + x, time: "09:00", stylist_listing: stylist, booked: false})
        availabilities.push({date: today + x, time: "10:00", stylist_listing: stylist, booked: false})
        availabilities.push({date: today + x, time: "11:00", stylist_listing: stylist, booked: false})
        availabilities.push({date: today + x, time: "13:00", stylist_listing: stylist, booked: false})
        availabilities.push({date: today + x, time: "14:00", stylist_listing: stylist, booked: false})
        availabilities.push({date: today + x, time: "15:00", stylist_listing: stylist, booked: false})
        availabilities.push({date: today + x, time: "16:00", stylist_listing: stylist, booked: false})
        availabilities.push({date: today + x, time: "17:00", stylist_listing: stylist, booked: false})
        availabilities.push({date: today + x, time: "18:00", stylist_listing: stylist, booked: false})
        availabilities.push({date: today + x, time: "19:00", stylist_listing: stylist, booked: false})
      end
      Availability.create(availabilities)
    end


end
