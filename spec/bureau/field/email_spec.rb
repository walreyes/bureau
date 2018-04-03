require "bureau/field/email"
RSpec.describe Bureau::Field::Email do
  let(:subject) { described_class }

  it "converts class name to partial path" do
    expect(subject.to_partial_path).to eq('bureau/field/email')
  end
end