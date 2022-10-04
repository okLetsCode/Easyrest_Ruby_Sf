# frozen_string_literal: true

# This page is for creating objects from moderator page elements
class ModeratorPage
  def click_users_btn
    @driver.find_element(:CSS, '[href*="users"]').click
  end

  def click_owners_btn
    @driver.find_element(:CSS, '[href*="owners"]').click
  end

  def click_restaurants_btn
    @driver.find_element(:CSS, '[href*="moderator/restaurants"]').click
  end

  def click_all_btn
    @driver.find_element(:xPath, '/html/body/div/div/main/div[1]/header/div/div[2]/div[2]/div/button[1]/span[1]/span').click
  end

  def click_archived_btn
    @driver.find_element(:xPath, '/html/body/div/div/main/div[1]/header/div/div[2]/div[2]/div/button[4]/span[1]/span').click
  end

  def click_restore_btn
    @driver.find_element(:xPath, '/html/body/div/div/main/div[1]/header/div/div[2]/div[2]/div/button[4]/span[1]/span').click
    @driver.find_element(:xPath, '/html/body/div/div/main/div[2]/div[2]/div/div/div[3]/button').click
  end
end
