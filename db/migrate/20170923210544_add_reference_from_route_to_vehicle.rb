class AddReferenceFromRouteToVehicle < ActiveRecord::Migration
  def change
    add_reference :routes, :vehicle, index: true, foreign_key: true
  end
end
