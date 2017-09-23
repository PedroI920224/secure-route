class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :licence_plate, null: false
      t.string :color, null: false
      t.string :brand_car, null: false
    end
  end
end
