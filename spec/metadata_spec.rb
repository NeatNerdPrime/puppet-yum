# frozen_string_literal: true

require 'json'

describe 'module metadata' do
  subject(:operatingsystem_support) do
    metadata.fetch('operatingsystem_support')
  end

  let(:metadata) do
    JSON.parse(File.read(File.expand_path('../metadata.json', __dir__)))
  end

  it 'supports Alibaba Linux 3' do
    expect(operatingsystem_support).to include(
      'operatingsystem' => 'Alibaba',
      'operatingsystemrelease' => ['3'],
    )
  end
end
