class Route < ActiveRecord::Base

  validates :distance, :road_taken, presence: true
  belongs_to :vehicle
end
