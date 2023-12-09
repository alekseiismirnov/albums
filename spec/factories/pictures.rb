FactoryBot.define do
  factory :picture do 
    # belongs_to
    user
    file { Rack::Test::UploadedFile.new(file_fixture('stub.jpg'), 'image/jpeg')}
    after(:create) do |picture, _|
      create_list(:tag, 5, pictures: [picture])
    end
  end
end
