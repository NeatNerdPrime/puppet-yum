# frozen_string_literal: true

require 'json'

describe 'module metadata' do
  subject(:operatingsystem_support) do
    metadata.fetch('operatingsystem_support')
  end

  let(:metadata) do
    JSON.parse(File.read(File.expand_path('../metadata.json', __dir__)))
  end

  it 'does not claim support for Alibaba Linux' do
    expect(operatingsystem_support).not_to include(
      a_hash_including('operatingsystem' => 'Alibaba'),
    )
  end
end
