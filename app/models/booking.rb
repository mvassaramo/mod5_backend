class Booking < ApplicationRecord
  belongs_to :availability
  belongs_to :customer_booking
end
