# frozen_string_literal: true

require_relative '../shared_context/shared_context_spec'
require_relative '../pages/moderator_page'
require_relative '../pages/shared_objects'

cred = YAML.load_file('config/test_data.yml')

RSpec.describe ModeratorPage do
  let(:mod) { described_class.new(@driver) }
  let(:user) { cred.fetch('emails')['mod_email'] }
  let(:pw) { cred.fetch('pw')['mod_pwd'] }

  include_context 'login'

  it 'can approve a restaurant' do
    mod.can_approve
  end

  it 'can disapprove a restaurant' do
    mod.can_disapprove
  end

  it 'can delete a restaurant' do
    mod.can_detele_restaurant
  end

  it 'can restore a restaurant' do
    mod.click_restore_btn
  end

  it 'can ban/unban users' do
    mod.click_users_btn
    mod.ban_users
    expect(@driver.find_element(xpath: '//tbody/tr[1]/td[4]/p[1]').text).to eq('Banned')
    mod.ban_users
    expect(@driver.find_element(xpath: '//tbody/tr[1]/td[4]/p[1]').text).to eq('Active')
  end

  it 'can ban/unban owners' do
    mod.click_owners_btn
    mod.ban_owners
    expect(@driver.find_element(xpath: "//tbody/tr[1]/td[5]/p[1]").text).to eq('Banned')
    mod.ban_owners
    expect(@driver.find_element(xpath: "//tbody/tr[1]/td[5]/p[1]").text).to eq('Active')
  end
end
