class Availability < ApplicationRecord
  belongs_to :stylist_listing
  has_one :booking

  validates :time, presence: true
  validates :date, presence: true

  def booked
    Booking.all.select {|b| b.availability == self}.length > 0
  end
end
