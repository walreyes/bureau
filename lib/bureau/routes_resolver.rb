module Bureau
  class RoutesResolver
    def initialize(url)
      @url = /\/bureau\/(?<name>\w*)(\/(?<id>\w+))?/.match(url)
    end

    def resource_name
      @url[:name]
    end

    def resource_id
      @url[:id]
    end
  end
end