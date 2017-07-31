class Market < ApplicationRecord
  has_one :address, as: :addressable, dependent: :destroy
  has_many :operating_hours, dependent: destroy
  
  delegate :street, :city, :state, :zip, to: :address

  validates :name, :description, presence: true
end
