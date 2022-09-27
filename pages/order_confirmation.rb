# frozen_string_literal: true

# This page is for class OrderConfirmation
class OrderConfirmation
  DATE_SELECT = { xpath: '/html/body/div[2]/div[2]/div/div[2]/div[1]/div[1]/div/input' }.freeze
  DATE_CHANGE = { xpath: '/html/body/div[3]/div[2]/div/div[1]/div[3]/div/div[5]/div[5]/button/span[1]' }.freeze
  TIME_SELECT = { xpath: '/html/body/div[2]/div[2]/div/div[2]/div[1]/div[2]/div/input' }.freeze
  TIME_CHANGE = { xpath: '/html/body/div[3]/div[2]/div/div[1]/div[2]/div/div[1]' }.freeze
  REMOVE_ITEM = { xpath: '/html/body/div[2]/div[2]/div/div[2]/div[2]/table/tbody/tr[1]/td[1]/button/span[1]/svg' }.freeze
  CHANGE_QUANTITY = { xpath: '/html/body/div[2]/div[2]/div/div[2]/div[2]/table/tbody/tr[1]/td[1]/button/span[1]/svg' }.freeze
  CANCEL_BTN = { css: "//span[contains(@class, 'MuiButton-label-81')][contains(., 'Cancel')]" }.freeze
  SUBMIT_BTN = { css: "//span[contains(@class, 'MuiButton-label-81')][contains(., 'Submit')]" }.freeze
  
  def select_date
    @driver.find_element(DATA_CHANGE).click
  end

  def change_date
    @driver.find_element(DATA_CHANGE).click
  end

  def select_time
    @driver.find_element(TIME_SELECT).click
  end

  def change_time
    @driver.find_element(TIME_CHANGE).click
  end

  def remove_item
    @driver.find_element(REMOVE_ITEM).click
  end

  def quantity_change(value)
    @driver.find_element(CHANGE_QUANTITY).send_keys(value)
  end

  def cancel
    @driver.find_element(CANCEL_BTN).click
  end

  def submit
    @driver.find_element(SUBMIT_BTN).click
  end
end
