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
    params.require(:stylist_listing).permit(:user_id, :first_name, :last_name, :bio, :rating, :area, availabilities: [])
  end

  def services_params
    params.require(:stylist_listing).permit(services: [])
  end

end
