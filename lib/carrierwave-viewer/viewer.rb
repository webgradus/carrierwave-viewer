module CarrierWave
  module Viewer
    extend ActiveSupport::Concern

    included do
      after :store, :save_to_groupdocs
    end

    private

    def save_to_groupdocs(file)
      groupdocs_file = GroupDocs::Storage::File.upload!(file.path, {}, client_id: self.groupdocs_client_id, private_key: self.groupdocs_private_key)
      self.model.groupdocs_guid = groupdocs_file.guid
    end
  end
end
