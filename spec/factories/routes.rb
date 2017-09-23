FactoryGirl.define do
  factory :route do
    distance 1.1
    road_taken {"1" => "carrera 7ma"}
    vehicle
  end
end
