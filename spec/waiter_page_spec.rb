# frozen_string_literal: true

require_relative '../shared_context/shared_context_spec'
require_relative '../pages/waiter_page'

cred = YAML.load_file('../config/creds.yml')

RSpec.describe WaiterPage do
  let(:waiter) { described_class.new(@driver) }
  let(:user) { cred.fetch('emails')['waiter_email'] }
  let(:pw) { cred.fetch('pw')['waiter_pwd'] }

  include_context 'login'
end
