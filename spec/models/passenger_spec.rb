require 'rails_helper'

describe Passenger, type: :model do
  it { should belong_to(:user) }
  it { should have_db_index(:user_id) }
  it { should have_many(:vehicle_entries)}
  it { should have_many(:vehicles).through(:vehicle_entries)}
end
