# frozen_string_literal: true

# This page contains class Administrator and the page objects for it.
class Administrator
  ROW = { xpath: '/html/body/div/main/div/div/div/div/div[1]/div[1]' }.freeze
  ACCEPT_BTN = { xpath: '/html/body/div/main/div/div/div/div/div[1]/div[2]/div/div/div/div/div[2]/div/button/span[1]' }.freeze
  ASSIGN_BTN = { xpath: '/html/body/div/main/div/div/div/div/div[1]/div[2]/div/div/div/div/div[2]/div[3]/button' }.freeze
  WAITER_RADIO_BTN = { xpath: '/html/body/div/main/div/div/div/div/div[1]/div[2]/div/div/div/div/div[2]/div[1]/fieldset/div/label[1]/span[1]/span[1]/input' }.freeze
  WAITING_FOR_CONFIRM_TAB = { xpath: '/html/body/div/main/div/header/div/div[2]/div[2]/div/button[1]/span[1]/span/span' }.freeze
  ACCEPTED_TAB = { xpath: '//span[contains(text(),"Accepted")]' }.freeze
  WAITERS_TAB = { xpath: '/html/body/div/main/div/header/div/div[2]/div[2]/div/button[4]/span[1]/span/span' }.freeze
  WAITER = { xpath: '/html/body/div/main/div/div[1]/div[1]/div[1]/div/div/p' }.freeze

  def initialize(driver)
    @driver = driver
  end

  def click_order
    @driver.find_element(ROW).click
  end

  def click_waiter
    @driver.find_element(WAITER)
  end

  def click_waiting_for_confirm_tab
    @driver.find_element(WAITING_FOR_CONFIRM_TAB).click
  end

  def click_accepted_tab
    @driver.find_element(ACCEPTED_TAB).click
  end

  def click_waiters_tab
    @driver.find_element(WAITERS_TAB).click
  end

  def click_accept_order
    click_waiting_for_confirm_tab
    click_order
    @driver.find_element(ACCEPT_BTN).click
  end

  def click_assign_order
    click_accepted_tab
    click_order
    @driver.find_element(WAITER_RADIO_BTN).click
    @driver.find_element(ASSIGN_BTN).click
  end

  def click_check_orders_of_waiter
    click_waiters_tab
    click_waiter
  end

  def view_detailed_order_of_waiter
    click_waiters_tab
    click_waiter
    click_order
  end
end
