# frozen_string_literal: true

require 'selenium-webdriver'
require 'webdrivers'
require 'rspec'
require 'yaml'
require 'test/unit/assertions'
include Test::Unit::Assertions

RSpec.configure do |config|
  config.before(:context) do
    @driver = Selenium::WebDriver.for :chrome
    @driver.manage.window.maximize
    env_data = YAML.load_file('../config/env.yml')
    @driver.get(env_data[:base_url])
  end
  config.after(:context) do
    @driver.quit
  end
  config.default_formatter = 'doc'
end
