require "bureau/field/string"
RSpec.describe Bureau::Field::String do
  let(:subject) { described_class }

  it "converts class name to partial path" do
    expect(subject.to_partial_path).to eq('bureau/field/string')
  end
end