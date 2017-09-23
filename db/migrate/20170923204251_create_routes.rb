class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.float :distance, null: false, default: 0.0
      enable_extension "hstore"
      t.hstore :road_taken, default: {}, null: false
    end
  end
end
