module Bureau
  class Resource
    def self.configure(model, &block)
      resource = Resource.new
      yield resource if block_given?
    end

    def attributes(attrs={})
      attrs.each do |attr, value|
        singleton_class.class_eval { attr_accessor "#{attr}" }
        send("#{attr}=", value)
      end
      @attributes ||= attrs
    end
  end
end