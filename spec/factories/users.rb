FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { Faker::Internet.password min_length: 8 }
    username { Faker::Internet.username }
  end
end
