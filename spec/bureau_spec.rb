require 'spec_helper'
require "bureau"

RSpec.describe Bureau do
  it "has a version number" do
    expect(Bureau::VERSION).not_to be nil
  end
end
