# frozen_string_literal: true

require_relative '../shared_context/shared_context_spec'
require_relative '../pages/home_page'

cred = YAML.load_file('../config/creds.yml')

RSpec.describe HomePage do
  let(:home) { described_class.new(@driver) }
  let(:user) { cred.fetch('emails')['customer_email'] }
  let(:pw) { cred.fetch('pw')['customer_pwd'] }

  include_context 'login'
end
