require "bureau/version"
require "bureau/engine"
require "bureau/resource"

module Bureau
  @@resources = []

  def self.resources
    @@resources
  end

  def self.resources=(resources)
    @@resources = resources
  end
end