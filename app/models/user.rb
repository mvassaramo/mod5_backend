class User < ApplicationRecord
  has_many :requests
  has_one :stylist_listing
  has_many :bookings


end
