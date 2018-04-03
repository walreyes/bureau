module Bureau
  module Field
    class Image
      def initialize url
        @url = url
      end

      def displayable
        "<img src='#{@url}'/>".html_safe
      end
    end
  end
end