module Bureau
  class ResourcesController < ApplicationController
    before_action :resource
    before_action :find_element, only: [:destroy] 
    
    def index
      @model = @model.all
    end

    def destroy
      @element.destroy
      redirect_to action: "index"
    end

    private

      def resource
        @resource_name = Bureau::RoutesResolver.new(request.original_url).resource_name
        @resource = Bureau.resources.select {|resource| resource.metadata.route_name == @resource_name}.first
        @model = @resource.model
      end

      def find_element
        @element = @model.find(params[:id])
      end
  end
end
