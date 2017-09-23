require 'rails_helper'

describe Route, type: :model do
  it {should validate_presence_of(:distance)}
  it {should validate_presence_of(:road_taken)}
  it {should belong_to(:vehicle)}
end
