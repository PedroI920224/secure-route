class CreateVehicleEntries < ActiveRecord::Migration
  def change
    create_table :vehicle_entries do |t|
      t.references :passenger, index: true, foreign_key: true
      t.references :vehicle, index: true, foreign_key: true
    end
  end
end
