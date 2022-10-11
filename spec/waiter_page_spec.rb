# frozen_string_literal: true

require_relative '../shared_context/shared_context_spec'
require_relative '../pages/waiter_page'

cred = YAML.load_file('config/test_data.yml')

RSpec.describe WaiterPage do
  let(:waiter) { described_class.new(@driver) }
  let(:user) { cred.fetch('emails')['waiter_email'] }
  let(:pw) { cred.fetch('pw')['waiter_pwd'] }

  include_context 'login'

  it 'can click all button' do
    waiter.click_all_btn
    @wait.until { @driver.find_element(xpath: "//span[contains(text(),'All (19)')]") }
    expect(@driver.find_element(xpath: "//span[contains(text(),'All (19)')]").text).to eq('ALL (19)')
  end

  xit 'can test start button' do
    waiter.click_start_btn
    expect(@driver.find_element(css: "//p[@class='MuiTypography-root-41 MuiTypography-body2-49 MuiTypography-colorInherit-70 MuiTypography-alignCenter-64']")).to be_displayed
  end

  it 'can test close button' do
    waiter.click_close_btn
    expect(@driver.find_element(css: "//p[@class='MuiTypography-root-41 MuiTypography-body2-49 MuiTypography-colorInherit-70 MuiTypography-alignCenter-64']")).to be_displayed
  end

  it 'can test history tab' do
    waiter.click_history_btn
    expect(@driver.find_element(xpath: "//span[contains(text(),'History (13)')]").text).to eq('HISTORY (13)')
  end
end
