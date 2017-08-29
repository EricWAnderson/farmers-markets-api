class Market < ApplicationRecord
  has_one :address, as: :addressable, dependent: :destroy
  has_many :operating_hours, dependent: :destroy

  delegate :street, :unit, :city, :state, :zip, :latitude, :longitude, to: :address

  validates :name, presence: true
end
