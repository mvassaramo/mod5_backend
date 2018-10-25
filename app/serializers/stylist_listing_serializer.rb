class StylistListingSerializer < ActiveModel::Serializer
  attributes :id, :services, :area, :first_name, :last_name, :bio
end
