module Bureau
  class Metadata
    def initialize(model)
      @model = model
    end
  
    def route_name
      @route_name ||= @model.to_s.pluralize.downcase
    end
  end
end