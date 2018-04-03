require 'spec_helper'
require 'app/services/resource_from_url_extractor'

RSpec.describe ResourceFromUrlExtractor do
  it 'extracts resource name' do 
    extractor = ResourceFromUrlExtractor.new('/bureau/resource_name/')
    expect(extractor.resource).to eq('resource_name')
    expect(extractor.resource_id).to be_nil
  end

  it 'extracts resource name and id' do 
    extractor = ResourceFromUrlExtractor.new('/bureau/resource_name/resource_id')
    expect(extractor.resource).to eq('resource_name')
    expect(extractor.resource_id).to eq('resource_id')
  end
end