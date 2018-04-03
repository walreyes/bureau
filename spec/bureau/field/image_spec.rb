require "bureau/field/image"
RSpec.describe Bureau::Field::Image do
  let(:subject) { described_class }

  it "converts class name to partial path" do
    expect(subject.to_partial_path).to eq('bureau/field/image')
  end
end