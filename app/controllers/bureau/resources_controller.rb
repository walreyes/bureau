class Bureau::ResourcesController < ApplicationController
  before_action :set_resource_model
  def index
    @resources = klass_name.all
  end

  private

  def request_data
    @request_data ||= request.url.match(%r{\/bureau\/(?<name>\w*)(\/(?<id>\w+))?})
  end

  def klass_name
    @klass_name ||= request_data["name"].singularize.titleize.constantize
  end

  def set_resource_model
    @resource_model ||= @resource_model = Bureau.resources.select{|res| res.model.to_s == klass_name.to_s }.first
  end
end