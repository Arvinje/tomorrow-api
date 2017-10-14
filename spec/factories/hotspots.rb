FactoryGirl.define do
  factory :hotspot do
    name { Faker::Address.street_name }
    latitude { Faker::Address.latitude }
    longitude { Faker::Address.longitude }
    description { Faker::Lorem.paragraph }
    visits_count 0
  end
end
