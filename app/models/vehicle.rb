class Vehicle < ActiveRecord::Base

  validates :brand_car, :color, :licence_plate, presence: true
end
