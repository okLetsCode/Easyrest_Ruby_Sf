# frozen_string_literal: true

require_relative '../shared_context/shared_context_spec'
require_relative '../pages/administrator_panel_page'

cred = YAML.load_file('../config/creds.yml')

RSpec.describe Administrator do
  let(:admstr) { described_class.new(@driver) }
  let(:user) { cred.fetch('emails')['administr_email'] }
  let(:pw) { cred.fetch('pw')['administr_pwd'] }

  include_context 'login'
end
