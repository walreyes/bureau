require "bureau/version"
require "bureau/resource"
require "bureau/engine"

module Bureau
  @@resources = []

  def self.resources
    @@resources
  end

  def self.resources=(resources)
    @@resources = resources
  end
end
