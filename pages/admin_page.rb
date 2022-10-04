# frozen_string_literal: true

# This class is for AdminPage
class AdminPage
  USER_ADMIN_PROFILE_BTN = { xpath: '/html/body/div/header/div/div/div/button/span[1]/div' }.freeze
  ADMIN_PANEL = { css: '[href*="/admin"]' }.freeze
  USERS_BTN = { css: '[href*=/admin/users]' }.freeze
  USER_LOCK = { xpath: '/html/body/div/div/main/div[2]/table/tbody/tr[1]/td[5]/button/span[1]/svg/path[2]' }.freeze
  OWNERS_BTN = { xpath: '/html/body/div/div/ul/a[2]' }.freeze
  OWNERS_LOCK = { xpath: '/html/body/div/div/main/div[2]/table/tbody/tr[1]/td[5]/button' }.freeze
  MODERATORS_BTN = { css: '[href*="/admin/moderators"]' }.freeze
  MODERATORS_ALL = { xpath: '/html/body/div/div/main/div[1]/header/div/div[2]/div[2]/div/button[1]/span[1]/span/span' }.freeze
  MODERATORS_ACTIVE = { xpath: '/html/body/div/div/main/div[1]/header/div/div[2]/div[2]/div/button[2]/span[1]/span/span' }.freeze
  MODERATORS_BANNED = { xpath: '/html/body/div/div/main/div[1]/header/div/div[2]/div[2]/div/button[3]/span[1]/span/span' }.freeze
  ADD_MODERATOR_BTN = { xpath: '/html/body/div/div/main/a' }.freeze
  MODERATOR_CANCEL_BTN = { xpath: '/html/body/div/div/main/div/div/form/div/div/div[7]/div/a' }.freeze
  ADD_MODERATOR_NAME = { xpath: '/html/body/div/div/main/div/div/form/div/div/div[1]/div/div/input' }.freeze
  ADD_MODERATOR_EMAIL = { xpath: '/html/body/div/div/main/div/div/form/div/div/div[2]/div/div/input' }.freeze
  ADD_MODERATOR_PHONENUMBER = { xpath: '/html/body/div/div/main/div/div/form/div/div/div[3]/div/div/input' }.freeze
  ADD_MODERATOR_BIRTHDATE = { xpath: '/html/body/div/div/main/div/div/form/div/div/div[4]/div/div[1]/div/div/input' }.freeze
  ADD_MODERATOR_PASS = { xpath: '/html/body/div/div/main/div/div/form/div/div/div[5]/div/div/input' }.freeze
  ADD_MODERATOR_CONFIRMPASS = { xpath: '/html/body/div/div/main/div/div/form/div/div/div[6]/div/div/input' }.freeze
  ADD_MODERATOR_CREATEACC = { xpath: '/html/body/div/div/main/div/div/form/div/div/div[7]/div/button' }.freeze
  MODERATORS_LOCK = { xpath: '/html/body/div/div/main/div[2]/table/tbody/tr/td[5]/button' }.freeze
  RESTAURANTS_BTN = { xpath: '/html/body/div/div/ul/a[4]/div[2]' }.freeze
  RESTAURANTS_UNAPPROVED = { xpath: '/html/body/div/div/main/div[1]/header/div/div[2]/div[2]/div/button[2]/span[1]/span' }.freeze
  RESTAURANTS_APPROVED = { xpath: '/html/body/div/div/main/div[1]/header/div/div[2]/div[2]/div/button[3]/span[1]/span' }.freeze

  def initialize(driver)
    @driver = driver
  end

  def click_user_admin_profile
    @driver.find_element(USER_ADMIN_PROFILE_BTN).click
  end

  def click_admin_panel
    @driver.find_element(ADMIN_PANEL).click
  end

  def click_users_btn
    @driver.find_element(USERS_BTN).click
  end

  def click_unlock_user_btn
    @driver.find_element(USER_LOCK).click
  end

  def click_owners
    @driver.find_element(OWNERS_BTN).click
  end

  def click_owners_lock
    @driver.find_element(OWNERS_LOCK).click
  end

  def click_moderators_btn
    @driver.find_element(MODERATORS_BTN).click
  end

  def click_moderators_all
    @driver.find_element(MODERATORS_ALL).click
  end

  def click_moderators_active
    @driver.find_element(MODERATORS_ACTIVE).click
  end

  def click_moderators_banned
    @driver.find_element(MODERATORS_BANNED).click
  end

  def click_moderators_lock
    @driver.find_element(MODERATORS_LOCK).click
  end

  def click_moderators_cancel
    @driver.find_element(MODERATORS_CANCEL_BTN).click
  end

  def click_add_moderators
    @driver.find_element(ADD_MODERATOR_BTN).click
  end

  def click_add_moderators_birthdate
    @driver.find_element(ADD_MODERATOR_BIRTHDATE).click
  end

  def click_add_moderators_confirmpass
    @driver.find_element(ADD_MODERATOR_CONFIRMPASS).click
  end

  def click_add_moderators_createacc
    @driver.find_element(ADD_MODERATOR_CREATEACC).click
  end

  def click_add_moderators_email
    @driver.find_element(ADD_MODERATOR_EMAIL).click
  end

  def click_add_moderators_name
    @driver.find_element(ADD_MODERATOR_NAME).click
  end

  def click_add_moderators_pass
    @driver.find_element(ADD_MODERATOR_PASS).click
  end

  def click_add_moderators_phonenumber
    @driver.find_element(ADD_MODERATOR_PHONENUMBER).click
  end

  def click_restaurants_btn
    @driver.find_element(RESTAURANTS_BTN).click
  end

  def click_restaurants_approved
    @driver.find_element(RESTAURANTS_APPROVED).click
  end

  def click_restaurants_unapproved
    @driver.find_element(RESTAURANTS_UNAPPROVED).click
  end
end
