FactoryBot.define do
  factory :picture do 
    # belongs_to
    user
    file { Rack::Test::UploadedFile.new('spec/fixtures/stub.jpg', 'image/jpeg')}
    after(:create) do |picture, _|
      create_list(:tag, 5, pictures: [picture])
    end
  end
end
