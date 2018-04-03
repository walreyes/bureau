module Bureau
  module Field
    class Email
      VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
      def initialize text
        @text = text
      end

      def displayable
        is_email? ? @text : "Not an Email"
      end

      private

      def is_email?
        VALID_EMAIL_REGEX.match(@text)
      end
    end
  end
end