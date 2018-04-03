module Bureau
  class URLMatcher
    def initialize(url)
      @matched = url.match(%r{\/bureau\/(?<name>\w*)(\/(?<id>\w+))?})
    end

    def url_name
      @matched["name"].singularize.titleize
    end

    def url_id
      @matched["id"]
    end
  end
end