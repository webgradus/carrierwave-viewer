require 'rubygems'
require 'bundler/setup'
require 'rspec'
require 'webmock/rspec'
require 'carrierwave'
require 'carrierwave-viewer'
require 'support/test_model'
require 'support/test_uploader'

RSpec.configure do |config|
  config.before do
    CarrierWave.configure do |groupdocs|
      groupdocs.groupdocs_client_id   = '07aaaf95f8eb33a4'
      groupdocs.groupdocs_private_key = '5cb711b3a52ffc5d90ee8a0f79206f5a'
    end
    FileUtils.rm_rf('tmp')
  end
end

# Borrowed from groupdocs-ruby specs
# Mocks API server.
#
def mock_api_server(json, headers = {})
  request = stub_request(:any, /#{GroupDocs.api_server}.*/)
  request = request.with(:headers => headers) unless headers.empty?
  request.to_return(:body => json)
end

#
# Loads JSON file.
#
def load_json(name)
  File.read("spec/support/#{name}.json")
end
