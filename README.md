# Carrierwave::Viewer

Carrierwave integration with GroupDocs service

## Installation

Add this line to your application's Gemfile:

    gem 'carrierwave-viewer'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install carrierwave-viewer

Add groupdocs_guid column to your mounted model:

    add_column :uploads, :groupdocs_guid, :string

Optionally, you can store document thumbnails as it comes from GroupDocs in binary format (for displaying using Data URI technique):

   add_column :uploads, :groupdocs_thumbnail, :text

## Usage

    CarrierWave.configure do |config|
      config.groupdocs_client_id   = 'YOUR_CLIENT_ID'
      config.groupdocs_private_key = 'YOUR_PRIVATE_KEY'
    end

    class MyAwesomeUploader < CarrierWave::Uploader::Base
      include CarrierWave::Viewer
    ...

Once your file will be stored via CarrierWave, it will be stored in GroupDocs too and you'll get 'guid' for this file to display its GroupDocs preview.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
