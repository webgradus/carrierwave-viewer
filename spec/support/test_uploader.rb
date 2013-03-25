class TestUploader < CarrierWave::Uploader::Base
  include CarrierWave::Viewer

  def store_dir
    "tmp/store"
  end

  def cache_dir
    "tmp/cache"
  end

  storage :file

end
