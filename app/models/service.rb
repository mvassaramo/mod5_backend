class Service < ApplicationRecord
  has_many :stylist_services
  has_many :stylist_listings, through: :stylist_services
end
