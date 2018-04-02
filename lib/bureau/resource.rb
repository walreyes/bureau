module Bureau
  class Resource
    def self.configure(model, &block)
      resource = self.new model
      yield resource
      Bureau.resources << resource
    end

    def initialize model
      @model = model 
      @config = {}
    end

    def attributes(attributes)
      @config[:attributes] = attributes
    end
  end
end