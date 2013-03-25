require File.expand_path('spec/spec_helper')

describe "Config" do
  before do
    @uploader_class = TestUploader
  end

  it "should have GroupDocs API credentials" do
    @uploader_class.should respond_to(:groupdocs_client_id)
    @uploader_class.should respond_to(:groupdocs_private_key)
  end

end
