module Bureau
  module Field
    class Base
      def self.to_partial_path
        self.name.downcase.split("::").join("/")
      end
    end
  end 
end
