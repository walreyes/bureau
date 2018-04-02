module Bureau
  class Resource
    attr_accessor :model
    def self.configure(model, &block)
      resource = Resource.new model
      yield resource if block_given?
      Bureau.resources << resource
    end
    
    def initialize(model)
      @model = model 
    end

    def attributes(attrs={})
      attrs.each do |attr, value|
        singleton_class.class_eval { attr_accessor "#{attr}" }
        send("#{attr}=", value)
      end
      @attributes ||= attrs
    end

    def show_page_attributes(attrs=[])
      @show_page_attributes ||= attrs
    end

    def edit_attributes(attrs=[])
      @edit_attributes ||= attrs
    end

    def collection_attributes(attrs=[])
      @collection_attributes ||= attrs
    end

    def searchable_attributes(attrs=[])
      @searchable_attributes ||= attrs
    end

    def is_deletable(deletable)
      @is_deletable ||= deletable
    end

    def is_deletable?
      @is_deletable
    end
  end
end