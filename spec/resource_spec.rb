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

  it "stores show page attributes" do
    resource = Bureau::Resource.new
    resource.show_page_attributes [:email, :name, :image]
    expect(resource.show_page_attributes).to eql([:email, :name, :image])
  end

  it "stores edit attributes" do
    resource = Bureau::Resource.new
    resource.edit_attributes [:email, :name, :image]
    expect(resource.edit_attributes).to eql([:email, :name, :image])
  end

  it "stores collection attributes" do
    resource = Bureau::Resource.new
    resource.collection_attributes [:id, :email]
    expect(resource.collection_attributes).to eql([:id, :email])
  end

  it "stores searchable attributes" do
    resource = Bureau::Resource.new
    resource.searchable_attributes [:id, :email]
    expect(resource.searchable_attributes).to eql([:id, :email])
  end

  it "stores deletable attribute" do
    resource = Bureau::Resource.new
    resource.is_deletable true
    expect(resource.is_deletable?).to eql(true)
  end

  it "returns nil if not deletable specified" do
    resource = Bureau::Resource.new
    expect(resource.is_deletable?).to eql(nil)
  end
end