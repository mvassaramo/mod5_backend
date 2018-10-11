class StylistListing < ApplicationRecord
  belongs_to :user
  has_many :services
  has_many :availabilities

  validates :area, presence: true
end
