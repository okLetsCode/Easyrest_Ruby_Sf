# frozen_string_literal: true

require_relative 'home_page'
require_relative '../spec/spec_helper'

# This page is for class RestaurantList
class RestaurantList < HomePage
  VIEWALL_TAB = { xpath: "//span[contains(text(),'View all')]" }.freeze
  BEER_TAB = { xpath: "//span[@innertext='beer']" }.freeze
  FASTFOOT_TAB = { xpath: "//span[contains(text(),'fast food')]" }.freeze
  JAHNSON_DETAILS_BTN = { xpath: '//div/div/div[1]/div/div[2]/div/div[4]/div[1]/a/span[1]' }.freeze
  BALLLOGAN_DETAILS_BTN = { css: '//div/div/div[2]/div/div[2]/div/div[4]/div[1]/a/span[1]' }.freeze
  PRESTON_DETAILS_BTN = { css: '//div/div/div[3]/div/div[2]/div/div[4]/div[1]/a/span[1]' }.freeze
  JAHNSON_WATCHMENU_BTN = { css: "[href*='menu/3']" }.freeze
  BALLLOGAN_WATCHMENU_BTN = { css: "[href*='menu/9']" }.freeze
  PRESTON_WATCHMENU_BTN = { css: "[href*='menu/15']" }.freeze
  SLIDE_RIGHT_LEFT_BTN = { xpath: "[//svg[@role='presentation']/path]" }.freeze

  def initialize(driver)
    @driver = driver
    super
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
