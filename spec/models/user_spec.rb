require 'rails_helper'

describe User, type: :model do
  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }
  it { should validate_presence_of(:role) }
  it { should have_one(:passenger) }
end
