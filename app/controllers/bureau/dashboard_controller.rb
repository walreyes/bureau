class Bureau::DashboardController < ApplicationController
  def index
    @resources = Bureau.resources
  end
end