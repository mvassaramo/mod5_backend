class Api::V1::StylistListingsController < ApplicationController

  def index
    @stylist_listings = StylistListing.all
    render json: @stylist_listings
  end

  def show
    @stylist_listing = StylistListing.find(params[:id])
    render json: @stylist_listing
  end

  def get_availabilities
    @stylist_listing = StylistListing.find(params[:stylist_listing_id])
    render json: @stylist_listing.availabilities
  end

  private

  def stylist_listing_params
    params.require(:stylist_listing).permit(:user_id, :rating, :area, availabilities: [])
  end

end
