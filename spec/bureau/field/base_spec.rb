require "bureau/field/base"
RSpec.describe Bureau::Field::Base do
  let(:subject) { described_class }

  it "converts class name to partial path" do
    expect(subject.to_partial_path).to eq('bureau/field/base')
  end
end