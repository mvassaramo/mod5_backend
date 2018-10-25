class User < ApplicationRecord
  has_many :requests
  has_one :stylist_listing
  has_many :bookings

  # validates: :email, presence: true
  # validates: :password, presence: true
  # validates: first_name,
  

  def name
    "#{first_name} #{last_name}"
  end

end
