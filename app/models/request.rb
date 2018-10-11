class Request < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, length: { in: 5..50}
  validates :description, presence: true, length: { maximum: 500}
  validates :date, presence: true
  validates :time, presence: true
end
