class ResourceFromUrlExtractor
  attr_reader :url, :resource, :resource_id  
  REGEX_PATTERN = '\/bureau\/(?<resource>\w*)(\/(?<resource_id>\w+))?'.freeze
    
  def initialize(url)
    @url = url
    match_regex
  end

  def match_regex
    match = @url.match(REGEX_PATTERN)
    @resource = match[:resource]
    @resource_id = match[:resource_id]
  end
end