module Bureau
  module Field
    class String < String
      def initialize text
        @text = text
      end

      def displayable
        @text
      end
    end
  end
end