Smug::Engine.routes.draw do
  devise_for :administrators,
             class_name: "Smug::Administrator",
             path: Smug.configuration.admin_route,
             module: "smug/admin"

  scope Smug.configuration.admin_route, as: "admin", module: "admin" do
    root "dashboards#show"

    resource :dashboard, only: [:show]

    Smug::Plugin.all.each do |plugin|
      resources plugin.route_key, plugin.route_options
    end
  end
end
