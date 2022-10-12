# frozen_string_literal: true

# This is class SharedObjects
class SharedObjects
  ALL_TAB = { xpath: "//*[contains(text(),'All ')]" }.freeze
  ACTIVE_TAB = { xpath: "//*[contains(text(),'Active ')]" }.freeze
  BANNED_TAB = { xpath: "//*[contains(text(),'Banned ')]" }.freeze

  def initialize(driver)
    @driver = driver
  end

  def all_tab_click
    @driver.find_element(ALL_TAB).click
  end

  def active_tab_click
    @driver.find_element(ACTIVE_TAB).click
  end

  def banned_tab_click
    @driver.find_element(BANNED_TAB).click
  end
end
