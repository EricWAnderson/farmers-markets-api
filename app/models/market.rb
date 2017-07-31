class Market < ApplicationRecord
  has_one :address, as: :addressable, dependent: :destroy
  delegate :street, :city, :state, :zip, to: :address
end
