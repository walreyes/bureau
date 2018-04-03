require "bureau/version"
require "bureau/resource"
require "bureau/engine"
require "bureau/metadata"
require "bureau/routes_resolver"

module Bureau
  @@resources = []

  def self.resources
    @@resources
  end

  def self.resources=(resources)
    @@resources = resources
  end
end
