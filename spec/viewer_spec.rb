require File.expand_path('spec/spec_helper')

describe CarrierWave::Viewer do
  let(:file) { File.open("spec/fixtures/groupdocs.pdf") }
  let(:object) { TestModel.new }

  before do
    mock_api_server(load_json('file_upload'))
    @uploader = TestUploader.new(object)
  end

  it "should have uploaded file to GroupDocs" do
    @uploader.store!(file)
    object.groupdocs_guid.should_not be_blank
    object.groupdocs_guid.should == '123abc'
  end

end
