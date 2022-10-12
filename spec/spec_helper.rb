# frozen_string_literal: true

require 'selenium-webdriver'
require 'webdrivers'
require 'yaml'
require 'test/unit/assertions'
include RSpec::Expectations

RSpec.configure do |config|
  config.before(:context) do
    @wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    @driver = Selenium::WebDriver.for :chrome
    @driver.manage.window.maximize
    env_data = YAML.load_file('config/env.yml')
    begin
      @driver.get(env_data[:base_url])
    rescue => RSpec::Core::MultipleExceptionError
      @driver.get(env_data[:local_url])
    end
  end
  config.after(:context) do
    @driver.quit
  end
end
