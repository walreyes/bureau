module Field
  class String
    def self.show(info)
      "<p>#{info}</p>"
    end
  end

  class Email
    def self.show(info)
      "<p>#{info}</p>"
    end
  end

  class Image
    def self.show(info)
      "<img src=\"#{info}\" \\>"
    end
  end
end
