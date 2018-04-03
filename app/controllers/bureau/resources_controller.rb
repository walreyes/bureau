module Bureau
  class ResourcesController < ApplicationController
    before_action :extract_resource_from_url, :set_resource

    def index
      @resources_records = fetch_records
    end

    def destroy
      @record = @resource.model.find @resource_extractor.resource_id
      @record.destroy if @resource.is_deletable?
      redirect_to :back
    end 

    private 

      def extract_resource_from_url
        @resource_extractor = ResourceFromUrlExtractor.new(request.url)
      end

      def set_resource
        @resource = Bureau.resources.find { |r| r.metadata.route_name == @resource_extractor.resource}
      end

      def fetch_records
        @resource.model.all.limit(100)
      end
  end
end