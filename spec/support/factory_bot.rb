RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods

  config.before(:each) do 
    Faker::Config.random = Random.new(1101)
    Faker::UniqueGenerator.clear
  end  
end
