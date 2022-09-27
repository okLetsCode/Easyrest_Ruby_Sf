# frozen_string_literal: true

# This page is for class RestaurantList
class RestaurantList
  VIEWALL_TAB = { xpath: "//span[@innertext='View all']" }.freeze
  BEER_TAB = { xpath: "//span[@innertext='beer']" }.freeze
  FASTFOOT_TAB = { xpath: "//span[@innertext='fast food']" }.freeze
  JAHNSON_DETAILS_BTN = { css: "[href*='restaurant/2']" }.freeze
  BALLLOGAN_DETAILS_BTN = { css: "[href*='restaurant/5']" }.freeze
  PRESTON_DETAILS_BTN = { css: "[href*='restaurant/8']" }.freeze
  JAHNSON_WATCHMENU_BTN = { css: "[href*='menu/3']" }.freeze
  BALLLOGAN_WATCHMENU_BTN = { css: "[href*='menu/9']" }.freeze
  PRESTON_WATCHMENU_BTN = { css: "[href*='menu/15']" }.freeze
  SLIDE_RIGHT_LEFT_BTN = { xpath: "[//svg[@role='presentation']/path]" }.freeze

  def initialize(driver)
    @driver = driver
  end

  def click_viewall
    @driver.find_element(VIEWALL_TAB).click
  end

  def click_beer
    @driver.find_element(BEER_TAB).click
  end

  def click_fast_foot
    @driver.find_element(FASTFOOT_TAB).click
  end

  def click_johnson_details
    @driver.find_element(JAHNSON_DETAILS_BTN).click
  end

  def click_balllogan_details
    @driver.find_element(BALLLOGAN_DETAILS_BTN).click
  end

  def click_preston_details
    @driver.find_element(PRESTON_DETAILS_BTN).click
  end

  def click_johnson_watchmenu
    @driver.find_element(JAHNSON_WATCHMENU_BTN).click
  end

  def click_balllogan_watchmenu
    @driver.find_element(BALLLOGAN_WATCHMENU_BTN).click
  end

  def click_preston_watchmenu
    @driver.find_element(PRESTON_WATCHMENU_BTN).click
  end

  def click_slide_arrow
    @driver.find_element(SLIDE_RIGHT_LEFT_BTN).click
  end
end
