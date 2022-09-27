# frozen_string_literal: true

# This page is for class OrderingFood
class OrderingFood
  CHIKEN_BROCCOLI = { xpath: "//div[2]//div[1]//div[1]//div[1]//div[2]//div[2]//div[1]//div[3]//button[1]//span[1]//*[name()='svg']" }.freeze
  EYEBALL_PASTA = { xpath: "//div[11]//div[1]//div[1]//div[1]//div[2]//div[2]//div[1]//div[3]//button[1]//span[1]//*[name()='svg']" }.freeze
  CHIKEN_CHORIZO_DETAILS = { xpath: "//div[6]/div[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[2]/button[1]/span[1]//*[name()='svg']" }.freeze
  GO_TO_SALAD = { css: "[href*='#Salats']" }.freeze
  REMOVE_ITEM_FROM_CART = { xpath: "//div[@class='MuiCardContent-root-396']//div[1]//div[2]//div[1]//div[1]//button[1]//span[1]//*[name()='svg']" }.freeze
  SUBMIT_ORDER_BTN = { xpath: "//span[normalize-space()='Submit order']" }.freeze
  SELECT_QUANTITY = { xpath: "//div[@class='MuiInputBase-root-474 MuiInput-root-461 MuiInput-underline-465
     MuiInputBase-focused-476 MuiInput-focused-463 MuiInputBase-formControl-475 MuiInput-formControl-462']//input[@id='quantity']" }.freeze

  def select_chiken_broccoli
    @drive.find_element(CHIKEN_BROCCOLI).click
  end

  def select_eyeball_pasta
    @driver.find_element(EYEBALL_PASTA).click
  end

  def view_details
    @driver.find_element(CHIKEN_CHORIZO_DETAILS).click
  end

  def goto_salad
    @driver.find_element(GO_TO_SALAD).click
  end

  def remove_item
    @driver.find_element(REMOVE_ITEM_FROM_CART).click
  end

  def click_submit
    @driver.find_element(SUBMIT_ORDER_BTN).click
  end

  def quantity_change(value)
    @driver.find_element(SELECT_QUANTITY).send_keys(value)
  end
end
