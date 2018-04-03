class Bureau::DashboardController < Bureau::BaseController
  def index
    @resources = Bureau.resources
  end
end