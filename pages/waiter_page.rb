# frozen_string_literal: true

# This page is for creating objects from waiter page elements
class WaiterPage
  def click_all_btn
    @driver.find_element(:CSS, '[href*="orders"]').click
  end

  def click_assigned_btn
    @driver.find_element(:CSS, '[href*="Assigned"]').click
  end

  def click_start_btn
    @driver.find_element(:CSS, '[href*="Assigned"]').click
    @driver.find_element(:xPath, '/html/body/div/main/div/div[1]/div/div/div[2]/div/div[4]/div/button').click
    @driver.find_element(:xPath, '/html/body/div/main/div/div[1]/div/div[2]/div/div/div[2]/button').click
  end

  def click_progress_btn
    @driver.find_element(:CSS, '[href*="progress"]').click
  end

  def click_close_btn
    @driver.find_element(:CSS, '[href*="progress"]').click
    @driver.find_element(:xPath, '/html/body/div/main/div/div[1]/div/div/div[2]/div/div[4]/div/button').click
    @driver.find_element(:xPath, '/html/body/div/main/div/div[1]/div/div[2]/div/div/div[2]/button').click
  end

  def click_history_btn
    @driver.find_element(:CSS, '[href*="History"]').click
  end
end
