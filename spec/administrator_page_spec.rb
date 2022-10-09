# frozen_string_literal: true

require_relative '../shared_context/shared_context_spec'
require_relative '../pages/administrator_panel_page'

cred = YAML.load_file('../config/creds.yml')

RSpec.describe Administrator do
  let(:admstr) { described_class.new(@driver) }
  let(:user) { cred.fetch('emails')['administr_email'] }
  let(:pw) { cred.fetch('pw')['administr_pwd'] }
  let(:wait) {@wait}

  include_context 'login'

  # it 'Select an order with status \'Waiting To Confirm\' and accept it' do
  #   admstr.click_accept_order
  #   wait.until{ @driver.find_element(xpath: '//div[1]/main[1]/div[1]/div[2]/div[1]/div[1]/span[1]/p[1]').displayed? }
  # end

  it 'Expand an order with status \'Accepted\' and assign in to a waiter' do
    admstr.click_assign_order
    wait.until{ @driver.find_element(xpath: '//div[1]/main[1]/div[1]/div[2]/div[1]/div[1]').displayed? }
    # expect(@driver.find_element(:xpath, '//div[1]/main[1]/div[1]/div[2]/div[1]/div[1]')).to be_displayed
  end

  # it 'Select a waiter and view his order' do
  #   admstr.view_detailed_order_of_waiter
  #   sleep(1)
  #   expect(@driver.find_element(:xpath, '//div/main/div/div[1]/div[2]/div/div/div/div/div[1]/div/div[2]/div/div/div/div/h6').text).to eq('Order summary')
  # end
end
