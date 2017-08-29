FactoryGirl.define do
  factory :address do
    street { Faker::Address.street_address }
    city { Faker::Address.city }
    state { Faker::Address.state_abbr }
    zip { Faker::Number.number(5) }
    latitude { Faker::Address.latitude }
    longitude { Faker::Address.longitude }
  end
end
