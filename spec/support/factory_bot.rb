RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods

  config.before(:each) do 
    Faker::Config.random = Random.new(1101)
    Faker::UniqueGenerator.clear
  end  
end

module FactoryBotFileFixtureHelpers
  extend ActiveSupport::Concern

  include ActiveSupport::Testing::FileFixtures
  include ActionDispatch::TestProcess::FixtureFile

  included do
    self.file_fixture_path = RSpec.configuration.file_fixture_path
  end
end

FactoryBot::Evaluator.include FactoryBotFileFixtureHelpers
FactoryBot::SyntaxRunner.include FactoryBotFileFixtureHelpers
