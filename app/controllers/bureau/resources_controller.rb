class Bureau::ResourcesController < ApplicationController
  before_action :set_url_matcher
  before_action :set_resource_model
  before_action :set_resource, except: [:index]
  
  def index
    @resources = @resource_model.model.all
  end

  def destroy
    if @resource_model.is_deletable?
      @resource.destroy
    end
    redirect_to action: "index" 
  end

  private

  def set_resource
    @resource ||= @resource_model.model.find(@url_matcher.url_id)
  end

  def set_url_matcher
    @url_matcher ||= Bureau::URLMatcher.new(request.url)
  end

  def set_resource_model
    @resource_model ||= Bureau.resources.select{|res| res.model.to_s == @url_matcher.url_name }.first
  end
end