require 'rails_helper'

describe Passenger, type: :model do
  it { should belong_to(:user) }
  it { should have_db_index(:user_id) }
end
