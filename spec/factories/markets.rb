FactoryGirl.define do
  factory :market do
    address
    name { Faker::Lorem.word }
    description { Faker::Lorem.sentence }
  end
end
