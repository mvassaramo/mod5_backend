class Availability < ApplicationRecord
  belongs_to :stylist_listing
  has_one :booking

  validates :time, presence: true
  validates :date, presence: true
  validates :booked, presence: true
end
