# frozen_string_literal: true

require_relative '../shared_context/shared_context_spec'
require_relative '../pages/moderator_page'
require_relative '../pages/shared_objects'

cred = YAML.load_file('../config/creds.yml')

RSpec.describe ModeratorPage do
  let(:mod) { described_class.new(@driver) }
  let(:user) { cred.fetch('emails')['mod_email'] }
  let(:pw) { cred.fetch('pw')['mod_pwd'] }

  include_context 'login'
end
