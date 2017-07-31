FactoryGirl.define do
  factory :market do
    name { Faker::Lorem.word }
    description { Faker::Lorem.sentence }
  end
end
