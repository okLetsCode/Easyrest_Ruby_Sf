# frozen_string_literal: true

# This class is for login page
class LoginPage
  EMAIL_FIELD = { xpath: "//input[@name='email']" }.freeze
  PASSWORD_FIELD = { xpath: "//input[@name='password']" }.freeze
  SUBMIT_BTN = { xpath: "//button[@type='submit']" }.freeze
  SIGN_UP_BTN = { xpath: "//span[normalize-space()='Create account']" }.freeze

  def initialize(driver)
    @driver = driver
  end

  def click_sign_in
    driver.find_element(SIGN_IN_BTN).click
  end

  def type_email
    driver.find_element(EMAIL_FIELD).send_keys(email)
  end

  def type_password
    driver.find_element(PASSWORD_FIELD).send_keys(password)
  end

  def click_submit
    driver.find_element(SUBMIT_BTN).click
  end
end
