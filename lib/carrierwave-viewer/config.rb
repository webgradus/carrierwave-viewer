class CarrierWave::Uploader::Base
  add_config :groupdocs_client_id
  add_config :groupdocs_private_key

  configure do |config|
    config.groupdocs_client_id = nil
    config.groupdocs_private_key = nil
  end
end
