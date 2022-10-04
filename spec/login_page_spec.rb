# frozen_string_literal: true

require_relative '../shared_context/shared_context_spec'

cred = YAML.load_file('../config/creds.yml')

RSpec.describe LoginPage do
  let(:user) { cred.fetch('emails')['customer_email'] }
  let(:login) { described_class.new(@driver) }

  it 'shows error msg with invalid credentials' do
    login.click_sign_in
    login.type_email(user)
    login.type_password('asd')
    login.click_submit
    sleep(1)
    expect(@driver.find_element(:css, "[id='client-snackbar']").text).to eq('Email or password is invalid')
  end
end
