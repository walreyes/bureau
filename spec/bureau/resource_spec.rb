require 'spec_helper'
require 'bureau'
require 'bureau/resource'

RSpec.describe Bureau::Resource do

  describe "configure" do

    it "implements configure" do
      expect(Bureau::Resource).to respond_to(:configure) 
    end

    context 'configurations' do 
      before(:each) do 
        @config_mock_instance = Bureau::Resource.new DummyModel
        allow(Bureau::Resource).to receive(:new).and_return(@config_mock_instance) 
      end

      it "calls configuration methos on an instance" do 
        expect(Bureau::Resource).to receive(:new).with(DummyModel)
        expect(@config_mock_instance).to receive(:attributes).with(["Attribute"])
  
        Bureau::Resource.configure DummyModel do |config|
          config.attributes ["Attribute"]
        end
      end
  
      it "adds config to resources" do 
        expect{
          Bureau::Resource.configure DummyModel do |config|
            config.attributes ["Attribute"]
          end
        }.to change{Bureau.resources.length}.by(1)
  
        expect(Bureau.resources).to include(@config_mock_instance)      
      end
    end
  end 
end

class DummyModel 

end