class Vehicle < ActiveRecord::Base

  validates :brand_car, :color, :licence_plate, presence: true
  has_many :vehicle_entries, dependent: :destroy
  has_many :passengers, through: :vehicle_entries
  has_many :routes, dependent: :destroy
end
