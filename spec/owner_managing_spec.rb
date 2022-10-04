# frozen_string_literal: true

require_relative '../shared_context/shared_context_spec'
require_relative '../pages/owner_managing_rest_page'

cred = YAML.load_file('../config/creds.yml')

RSpec.describe OwnerManaging do
  let(:owner) { described_class.new(@driver) }
  let(:user) { cred.fetch('emails')['owner_email'] }
  let(:pw) { cred.fetch('pw')['owner_pwd'] }

  include_context 'login'
end
