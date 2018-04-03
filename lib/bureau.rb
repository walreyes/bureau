require "bureau/version"
require "bureau/resource"
require "bureau/engine"
require "bureau/urlmatcher"
require "bureau/field/string"
require "bureau/field/image"
require "bureau/field/email"

module Bureau
  @@resources = []

  def self.resources
    @@resources
  end

  def self.resources=(resources)
    @@resources = resources
  end
end
