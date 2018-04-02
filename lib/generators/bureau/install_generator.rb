module Bureau
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      desc "Creates bureau initializer and mounts engine to your application."

      def copy_initializer
        template "bureau.rb", "config/initializers/bureau.rb"
      end

      def add_bureau_route
        bureau_route = "mount Bureau::Engine => '/bureau'"
        route bureau_route
      end
    end
  end
end