FactoryBot.define do
  factory :picture do
    url { Faker::LoremFlickr.image }
    # belongs_to
    user
    after(:create) do |picture, _|
      create_list(:tag, 5, pictures: [picture])
    end
  end
end
