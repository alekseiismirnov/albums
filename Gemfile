source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.0"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.3", ">= 7.0.3.1"

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"

# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

# Bundle and transpile JavaScript [https://github.com/rails/jsbundling-rails]
gem "jsbundling-rails"

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails", "~> 1.0.0"

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"

# Bundle and process CSS [https://github.com/rails/cssbundling-rails]
gem "cssbundling-rails"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Bootstrap supprt 
gem 'bootstrap', '~> 5.2.0'
gem 'popper_js', '~> 2.11.8'

gem 'sassc-rails'
# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem "image_processing", "~> 1.2"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "rspec-rails"
  gem "guard"
  gem "guard-rspec", require: false
  gem "parallel_tests"
  gem "factory_bot_rails"
  gem "faker"
  gem "capybara"
  gem "selenium-webdriver", "=4.10.0"
  gem "launchy", "~> 2.5"
  gem "prettyprint"
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  gem "spring"
  gem 'spring-commands-rspec'
  gem "erb_lint", "~> 0.4.0"
  gem 'erb-formatter'
end
group 'test' do
  gem 'database_cleaner-active_record'
end

gem "importmap-rails", "~> 1.2"

gem "rubocop", "~> 1.54"

gem "devise", "~> 4.9"

gem "cancancan", "~> 3.5"

gem "responders", "~> 3.1"

gem "pry-remote"

gem "webrick", "~> 1.8"

gem "font-awesome-sass", "~> 6.4"

gem "solargraph", "~> 0.49.0"

gem "jquery-rails", "~> 4.6"

gem "active_storage_validations", "~> 1.1"

gem "bootstrap_form", "~> 5.4"

gem "devise-bootstrap-form", "~> 0.3.0"
