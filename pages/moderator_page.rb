# frozen_string_literal: true

# This page is for creating objects from moderator page elements
class ModeratorPage
  def initialize(driver)
    @driver = driver
  end

  def click_users_btn
    @driver.find_element(:css, '[href*="users"]').click
  end

  def click_owners_btn
    @driver.find_element(:css, '[href*="owners"]').click
  end

  def click_restaurants_btn
    @driver.find_element(:css, '[href*="moderator/restaurants"]').click
  end

  def click_all_btn
    @driver.find_element(:xpath, '/html/body/div/div/main/div[1]/header/div/div[2]/div[2]/div/button[1]/span[1]/span').click
  end

  def can_detele_restaurant
    @driver.find_element(xpath: '/html/body/div/div/main/div[1]/header/div/div[2]/div[2]/div/button[3]').click
    @wait.until { @driver.find_element(xpath: '//div/div/main/div[2]/div[3]/div/div/div[3]/button') }
    @driver.find_element(xpath: '//div/div/main/div[2]/div[3]/div/div/div[3]/button').click
  end

  def click_archived_btn
    @driver.find_element(:xpath, '/html/body/div/div/main/div[1]/header/div/div[2]/div[2]/div/button[4]/span[1]/span').click
  end

  def click_restore_btn
    @driver.find_element(:xpath, '/html/body/div/div/main/div[1]/header/div/div[2]/div[2]/div/button[4]/span[1]/span').click
    @driver.find_element(:xpath, '/html/body/div/div/main/div[2]/div[2]/div/div/div[3]/button').click
  end

  def can_disapprove
    @driver.find_element(xpath: '/html/body/div/div/main/div[2]/div[1]/div/div/div[3]/button[1]').click
  end

  def can_approve
    @driver.find_element(xpath: '/html/body/div/div/main/div[2]/div[1]/div/div/div[3]/button[2]/span[1]').click
  end

  def ban_owners
    @driver.find_element(xpath: "//tbody/tr[1]/td[6]/button[1]/span[1]//*[name()='svg']").click
  end

  def ban_users
    @driver.find_element(xpath: "//tbody/tr[1]/td[5]/button[1]/span[1]//*[name()='svg']").click
  end
end
