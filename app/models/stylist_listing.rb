class StylistListing < ApplicationRecord
  belongs_to :user
  has_many :availabilities
  has_many :stylist_services
  has_many :services, through: :stylist_services

end
