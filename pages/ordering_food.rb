# frozen_string_literal: true

# This page is for class OrderingFood
class OrderingFood
  CHIKEN_BROCCOLI = { xpath: '//div[2]//div[1]//div[1]//div[1]//div[2]//div[2]//div[1]//div[3]//button[1]//span[1]' }.freeze
  EYEBALL_PASTA = { xpath: '//div[11]//div[1]//div[1]//div[1]//div[2]//div[2]//div[1]//div[3]//button[1]//span[1]' }.freeze
  CHIKEN_CHORIZO_DETAILS = { xpath: '//div[6]/div[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[2]/button[1]/span[1]' }.freeze
  GO_TO_SALAD = { css: "[href*='#Salats']" }.freeze
  REMOVE_ITEM_FROM_CART = { css: "[aria-label='Remove item']" }.freeze
  SUBMIT_ORDER_BTN = { xpath: "//span[normalize-space()='Submit order']" }.freeze
  CHANGE_QUANTITY = { xpath: '//div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/div[4]/div[1]/div[1]/input[1]' }.freeze
  REMOVE_ITEM = { xpath: '//div[2]/div[2]/div/div[2]/div[2]/table/tbody/tr[1]/td[1]/button/span[1]/svg' }.freeze
  CHANGE_QUANTITY_ORD_CONFM = { xpath: '//div[2]/div[2]/div/div[2]/div[2]/table/tbody/tr[1]/td[1]/button/span[1]/svg' }.freeze
  CANCEL_BTN = { xpath: '//div[2]/div[2]/div/div[3]/button[1]/span[1]' }.freeze
  SUBMIT_BTN = { xpath: '//div[2]/div[2]/div/div[3]/button[2]/span[1]' }.freeze

  def initialize(driver)
    @driver = driver
  end

  def select_chiken_broccoli
    drive.find_element(CHIKEN_BROCCOLI).click
  end

  def select_eyeball_pasta
    driver.find_element(EYEBALL_PASTA).click
  end

  def view_details
    driver.find_element(CHIKEN_CHORIZO_DETAILS).click
  end

  def goto_salad
    driver.find_element(GO_TO_SALAD).click
  end

  def remove_item
    driver.find_element(REMOVE_ITEM_FROM_CART).click
  end

  def click_submit
    driver.find_element(SUBMIT_ORDER_BTN).click
  end

  def quantity_change(value)
    driver.find_element(CHANGE_QUANTITY).send_keys(value)
  end

  def remove_item_order_confirmation
    driver.find_element(REMOVE_ITEM).click
  end

  def quantity_change_order_confirmation(value)
    driver.find_element(CHANGE_QUANTITY_ORD_CONFM).send_keys(value)
  end

  def click_cancel_order_confirmation
    driver.find_element(CANCEL_BTN).click
  end

  def click_submit_order_confirmation
    driver.find_element(SUBMIT_BTN).click
  end
end
