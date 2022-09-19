require 'selenium-webdriver'
require 'webdrivers'
require 'rspec'

RSpec.configure do |config|

	config.before(:each) do
		@driver = Selenium::WebDriver.for :chrome
		@driver.manage.window.maximize
    	@driver.get("https://www.abv.bg/")
	end

	config.after(:each) do
		@driver.quit
	end

end