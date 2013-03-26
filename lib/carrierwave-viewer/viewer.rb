module CarrierWave
  module Viewer
    extend ActiveSupport::Concern

    included do
      SUPPORTED_TYPES = ['application/pdf', 'application/msword', 'application/vnd.ms-powerpoint']
      after :cache, :save_to_groupdocs
    end

    private

    def save_to_groupdocs(file)
      if SUPPORTED_TYPES.include?(file.content_type)
        groupdocs_file = GroupDocs::Storage::File.upload!(file.path, {name: file.filename}, client_id: self.groupdocs_client_id, private_key: self.groupdocs_private_key)
        self.model.groupdocs_guid = groupdocs_file.guid
        if self.model.respond_to?(:groupdocs_thumbnail=)
          self.model.groupdocs_thumbnail = groupdocs_file.thumbnail
        end
      end
    end
  end
end
