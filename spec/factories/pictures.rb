FactoryBot.define do
  factory :picture do 
    # belongs_to
    user
    after(:create) do |picture, _|
      create_list(:tag, 5, pictures: [picture])

      picture.file.attach(
      io: File.open(Rails.root.join('spec/fixtures/', 'stub.jpg')),
      filename: 'stub.jpg',
      content_type: 'image/jpeg'
      )
    end
  end
end
