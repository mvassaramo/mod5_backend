class User < ApplicationRecord
  has_many :requests
  has_one :stylist_listing
  has_many :customer_bookings

  validates :first_name, presence: true, length: { minimum: 2}
  validates :last_name, presence: true, length: { minimum: 1}
  validates :email, presence: true, uniqueness: true
  validates :contact_number, length: {minimum: 11}

end
