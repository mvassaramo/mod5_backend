class Service < ApplicationRecord
  belongs_to :stylist_listing

  validates :name, presence: true
end
