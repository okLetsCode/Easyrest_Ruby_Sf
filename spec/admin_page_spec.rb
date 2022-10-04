# frozen_string_literal: true

require_relative '../shared_context/shared_context_spec'
require_relative '../pages/admin_page'
require_relative '../pages/shared_objects'

cred = YAML.load_file('../config/creds.yml')

RSpec.describe AdminPage do
  let(:admin) { described_class.new(@driver) }
  let(:user) { cred.fetch('emails')['admin_email'] }
  let(:pw) { cred.fetch('pw')['admin_pwd'] }

  include_context 'login'
end
