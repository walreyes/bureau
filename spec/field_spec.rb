require "bureau/resource"
RSpec.describe Field::String do

  it "should show the string information" do
    expect(Field::String.show("My name")).to eql "<p>My name</p>"
  end
end

RSpec.describe Field::Email do

  it "should show the string information" do
    expect(Field::Email.show("My name")).to eql "<p>My name</p>"
  end
end

RSpec.describe Field::Image do

  it "should show the string information" do
    expect(Field::Image.show("www.images.com/1")).to eql "<img src=\"www.images.com/1\" \\>"
  end
end