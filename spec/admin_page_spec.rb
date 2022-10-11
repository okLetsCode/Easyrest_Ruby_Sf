# frozen_string_literal: true

require_relative '../shared_context/shared_context_spec'
require_relative '../pages/admin_page'
require_relative '../pages/shared_objects'

cred = YAML.load_file('config/test_data.yml')

RSpec.describe AdminPage do
  let(:admin) { described_class.new(@driver) }
  let(:user) { cred.fetch('emails')['admin_email'] }
  let(:pw) { cred.fetch('pw')['admin_pwd'] }
  let(:name) { cred.fetch('moderator')['name'] }
  let(:email) { cred.fetch('moderator')['email'] }
  let(:phone_number) { cred.fetch('moderator')['phone_number'] }
  let(:password) { cred.fetch('moderator')['password'] }
  let(:confirm_password) { cred.fetch('moderator')['confirm_password'] }

  include_context 'login'

  it 'Check the ban and unban functionality by admin for users.' do
    admin.click_lock_user_btn
    @wait.until { @driver.find_element(xpath: "//p[@class='MuiTypography-root-41 MuiTypography-body2-49 MuiTypography-colorError-75']") }
    expect(@driver.find_element(xpath: "//span[contains(text(),'Banned (1)')]").text).to eq('BANNED (1)')
    expect(@driver.find_element(xpath: "//span[contains(text(),'Active (9)')]").text).to eq('ACTIVE (9)')
    admin.click_lock_user_btn
    expect(@driver.find_element(xpath: '/html/body/div/div/main/div[2]/table/tbody/tr[1]/td[4]/p')).to be_displayed
    expect(@driver.find_element(xpath: "//span[contains(text(),'Banned (0)')]").text).to eq('BANNED (0)')
    expect(@driver.find_element(xpath: "//span[contains(text(),'Active (10)')]").text).to eq('ACTIVE (10)')
  end

  it 'Check the ban and unban functionality by admin for owners.' do
    admin.click_owners
    admin.click_owners_lock
    @wait.until { @driver.find_element(xpath: "//p[@class='MuiTypography-root-41 MuiTypography-body2-49 MuiTypography-colorError-75']") }
    expect(@driver.find_element(xpath: "//span[contains(text(),'Banned (1)')]").text).to eq('BANNED (1)')
    expect(@driver.find_element(xpath: "//span[contains(text(),'Active (4)')]").text).to eq('ACTIVE (4)')
    admin.click_owners_lock
    expect(@driver.find_element(xpath: '//tbody/tr[1]/td[4]/p[1]')).to be_displayed
    expect(@driver.find_element(xpath: "//span[contains(text(),'Banned (0)')]").text).to eq('BANNED (0)')
    expect(@driver.find_element(xpath: "//span[contains(text(),'Active (5)')]").text).to eq('ACTIVE (5)')
  end

  it 'Check the ban and unban functionality by admin for moderators.' do
    admin.click_moderators_btn
    admin.click_moderators_lock
    @wait.until { @driver.find_element(xpath: '//tbody/tr[1]/td[4]/p[1]') }
    expect(@driver.find_element(xpath: "//span[contains(text(),'Banned (1)')]").text).to eq('BANNED (1)')
    expect(@driver.find_element(xpath: "//span[contains(text(),'Active (1)')]").text).to eq('ACTIVE (1)')
    admin.click_moderators_lock
    expect(@driver.find_element(xpath: '//tbody/tr[1]/td[4]/p[1]')).to be_displayed
    expect(@driver.find_element(xpath: "//span[contains(text(),'Banned (0)')]").text).to eq('BANNED (0)')
    expect(@driver.find_element(xpath: "//span[contains(text(),'Active (2)')]").text).to eq('ACTIVE (2)')
  end

  it 'Check the create moderator functionality.' do
    admin.click_moderators_btn
    admin.click_add_moderators
    admin.click_add_moderators_name(name)
    admin.click_add_moderators_email(email)
    admin.click_add_moderators_phonenumber(phone_number)
    admin.click_add_moderators_pass(password)
    admin.click_add_moderators_confirmpass(confirm_password)
    admin.click_add_moderators_birthdate
    admin.click_years_fld
    admin.click_year
    admin.click_day
    admin.click_ok_btn
    admin.click_add_moderators_createacc
    @wait.until { @driver.find_element(xpath: '/html/body/div/div/main/div[2]/table/tbody').displayed? }
    expect(@driver.find_element(xpath: '/html/body/div/div/main/div[2]/table/tbody').text).to include('50 cent')
  end
end
