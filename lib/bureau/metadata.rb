module Bureau
  class Metadata
    def initialize(model)
      @model = model
    end

    def human_name
      @model.to_s
    end

    def route_name
      @model.to_s.pluralize.downcase # => users
    end
  end
end