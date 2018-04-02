require "bureau/resource"
RSpec.describe Bureau::Resource do
  it "has a configure method on Resource class" do
    expect(Bureau::Resource.methods).to include(:configure)
  end

  it "accepts hash as attributes" do
    resource = Bureau::Resource.new
    resource.attributes name: "Name"
    expect(resource.attributes.count).to eql(1)
  end

  it "stores attributes and generates accesor" do
    resource = Bureau::Resource.new
    resource.attributes name: "Name"
    expect(resource.name).to eql("Name")
  end
end