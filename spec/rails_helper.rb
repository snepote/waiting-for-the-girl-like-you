ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'spec_helper'
require 'rspec/rails'
require 'capybara/rspec'
require 'capybara/poltergeist'

# Checks for pending migrations before tests are run.
# If you are not using ActiveRecord, you can remove this line.
ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  # If you're not using ActiveRecord, or you'd prefer not to run each of your
  # examples within a transaction, remove the following line or assign false
  # instead of true.
  config.use_transactional_fixtures = true

  Capybara.javascript_driver = :poltergeist
  Capybara.javascript_driver = :webkit
  
  Capybara.default_max_wait_time = 20
  # ChromeDriver
  Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, browser: :chrome)
  end
  Capybara.register_driver :poltergeist do |app|
    Capybara::Poltergeist::Driver.new(app, {debug: false})
  end

  Capybara.register_driver :iphone do |app|
    # ChromeDriver
    mobile_emulation = { deviceName: 'Apple iPhone 4' }
    caps = Selenium::WebDriver::Remote::Capabilities.chrome(
      "chromeOptions" => { "mobileEmulation" => mobile_emulation }
    )
    Capybara::Selenium::Driver.new(app, browser: :chrome, desired_capabilities: caps)
  end
end
