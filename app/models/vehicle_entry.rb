class VehicleEntry < ActiveRecord::Base
  belongs_to :vehicle 
  belongs_to :passenger 
end
