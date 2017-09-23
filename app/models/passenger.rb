class Passenger < ActiveRecord::Base

  belongs_to :user, dependent: :destroy
  has_many :vehicle_entries, dependent: :destroy
  has_many :vehicles, through: :vehicle_entries
end
