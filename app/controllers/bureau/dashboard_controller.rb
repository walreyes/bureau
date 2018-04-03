module Bureau
  class DashboardController < ApplicationController
    def index
      @resources = Bureau.resources
    end
  end
end
