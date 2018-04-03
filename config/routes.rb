Bureau::Engine.routes.draw do 
  get "dashboard", to: "dashboard#index"

  Bureau.resources.each do |resource|
    resources resource.resource_route_name, controller: "resources"

  end
end
