require 'rails_helper'

describe VehicleEntry, type: :model do
  it {should have_db_index(:passenger_id)}
  it {should have_db_index(:vehicle_id)}
  it {should belong_to(:vehicle)}
  it {should belong_to(:passenger)}
end
