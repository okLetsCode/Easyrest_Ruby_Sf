# frozen_string_literal: true

require_relative '../shared_context/shared_context_spec'
require_relative '../pages/home_page'

RSpec.describe HomePage do
  let(:home) { described_class.new(@driver) }

  it 'Restaurant list button redirects to all restaurants' do
    home.click_restaurants_list
    sleep(2)
    expect(@driver.find_element(:xpath, "//div[@title='Johnson PLC']")).to be_displayed
  end

  it 'Homepage button redirects correctly to homepage' do
    home.click_homepage
    expect(@driver.find_element(:xpath, "//img[@alt='View All']")).to be_displayed
    sleep(2)
  end

  it 'View all button redirects to all restaurants' do
    home.click_view_all
    sleep(2)
    expect(@driver.find_element(:xpath, "//div[@title='Johnson PLC']")).to be_displayed
  end

  it 'Easy-rest button redirects correctly to homepage' do
    home.click_easy_rest
    expect(@driver.find_element(:xpath, "//img[@alt='View All']")).to be_displayed
    sleep(2)
  end

  # it 'Clicking any category redirects to the corresponding category' do
  #   home.click_any_category
  #   sleep(1)
  # end

  it 'Sign in button redirects to log-in page' do
    home.click_sign_in
    sleep(2)
    expect(@driver.find_element(xpath: "//span[normalize-space()='Google']")).to be_displayed
  end

  it 'Sign up button redirects to sign-up page' do
    home.click_sign_up
    sleep(2)
    expect(@driver.find_element(name: 'phoneNumber')).to be_displayed
  end
end
