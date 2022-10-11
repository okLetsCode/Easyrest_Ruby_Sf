# frozen_string_literal: true

require_relative 'home_page'

# This class RegistrationPage is for registration page.
class RegistrationPage < HomePage
  NAME_FIELD = { name: 'name' }.freeze
  EMAIL_FIELD = { name: 'email' }.freeze
  PHONE_FIELD = { name: 'phoneNumber' }.freeze
  BIRTH_DATE_FIELD = { name: 'birthDate' }.freeze
  YEARS_SELECT = { xpath: '/html/body/div[2]/div[2]/div/div[1]/div[1]/h6' }.freeze
  YEAR = { xpath: '/html/body/div[2]/div[2]/div/div[1]/div[2]/div[96]' }.freeze # 95 year
  DAY_SELECT = { xpath: '/html/body/div[2]/div[2]/div/div[1]/div[3]/div/div[4]/div[6]/button/span[1]' }.freeze # 22 day
  OK_BTN_DATE = { xpath: "//span[contains(@class, 'MuiButton-label')][contains(., 'OK')]" }.freeze
  CANCEL_BTN_DATE = { xpath: '/html/body/div[2]/div[2]/div/div[2]/button[1]/span[1]' }.freeze
  PASSWORD_FIELD = { name: 'password' }.freeze
  CONFIRM_PASS_FIELD = { name: 'repeated_password' }.freeze
  CREATE_ACC_BTN = { xpath: "//span[contains(@class, 'MuiButton-label')][contains(., 'Create account')]" }.freeze
  SIGN_IN_INST_BTN = { xpath: "//span[contains(@class, 'MuiButton-label')][contains(., 'Sign in instead')]" }.freeze
  SIGN_IN_BTN = { css: '[href*="log-in"]' }.freeze
  BACK_ARROW_BTN = { xpath: '/html/body/div/header/div/button/span[1]/svg' }.freeze

  def initialize(driver)
    @driver = driver
    super
  end

  def type_name(value)
    @driver.find_element(NAME_FIELD).send_keys(value)
  end

  def type_email(value)
    @driver.find_element(EMAIL_FIELD).send_keys(value)
  end

  def type_phone(value)
    @driver.find_element(PHONE_FIELD).send_keys(value)
  end

  def click_birth_date_fld
    @driver.find_element(BIRTH_DATE_FIELD).click
  end

  def click_years_fld
    @driver.find_element(YEARS_SELECT).click
  end

  def click_year
    @driver.find_element(YEAR).click
  end

  def click_day
    @driver.find_element(DAY_SELECT).click
  end

  def click_ok_btn
    @driver.find_element(OK_BTN_DATE).click
  end

  def click_cancel_btn
    @driver.find_element(CANCEL_BTN_DATE).click
  end

  def type_password(value)
    @driver.find_element(PASSWORD_FIELD).send_keys(value)
  end

  def type_pass_confrirm(value)
    @driver.find_element(CONFIRM_PASS_FIELD).send_keys(value)
  end

  def click_create_acc
    @driver.find_element(CREATE_ACC_BTN).click
  end

  def click_sign_in_btn
    @driver.find_element(SIGN_IN_BTN).click
  end

  def click_sign_in_inst_btn
    @driver.find_element(SIGN_IN_INST_BTN).click
  end

  def click_arrow_back_btn
    @driver.find_element(BACK_ARROW_BTN).click
  end
end
