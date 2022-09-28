# frozen_string_literal: true

require 'selenium-webdriver'
require 'webdrivers'
require 'rspec'
require 'yaml'

RSpec.configure do |config|
  config.before(:each) do
    @driver = Selenium::WebDriver.for :chrome
    @driver.manage.window.maximize
    env_data = YAML.load_file('config/env.yml')
    @driver.get(env_data[:base_url])
  end
  config.after(:each) do
    @driver.quit
  end
end
