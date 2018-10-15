class UserSerializer < ActiveModel::Serializer
  attributes :id, :stylist_listing, :bookings,
    :first_name, :last_name, :email, :contact_number, :profile_image
end
