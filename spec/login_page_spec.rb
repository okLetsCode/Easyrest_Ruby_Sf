# frozen_string_literal: true

require_relative '../shared_context/shared_context_spec'

cred = YAML.load_file('config/test_data.yml')

RSpec.describe LoginPage do
  let(:user) { cred.fetch('emails')['customer_email'] }
  let(:login) { described_class.new(@driver) }

  it 'checks for error message with invalid password' do
    login.click_sign_in
    login.type_email(user)
    login.type_password('asd')
    login.click_submit
    @wait.until { @driver.find_element(:css, "[id='client-snackbar']") }
    expect(@driver.find_element(:css, "[id='client-snackbar']").text).to eq('Email or password is invalid')
  end

  it 'check for valid email' do
    login.clear_email
    login.type_email('user.com')
    login.click_submit
    expect(@driver.find_element(css: 'div.MuiGrid-item-159:nth-child(1) > div:nth-child(1) > div:nth-child(1)').text).to include('Email is not valid')
  end

  it 'checks for empty password field' do
    login.clear_email
    login.type_email(user)
    login.clear_pwd
    login.type_password(:backspace)
    login.click_submit
    expect(@driver.find_element(css: 'div.MuiGrid-item-159:nth-child(2) > div:nth-child(1) > div:nth-child(1)').text).to include('Password is required')
  end
end
