# frozen_string_literal: true

require 'selenium/webdriver'

Capybara.configure do |config|
  session_server     = Capybara.current_session.server
  config.server_host = "#{ENV['APP_HOST']}"
  config.server_port = 55555
  config.app_host    = "http://#{config.server_host}:#{config.server_port}"
end

RSpec.configure do |config|
  config.before :each, type: :system, js: true do

    driven_by :selenium, 
      using: :chrome, 
      options: {
      browser: :remote,
      url: "http://#{ENV['SELENIUM_HOST']}:4444/wd/hub"
    }
  end
end
