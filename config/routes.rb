Smug::Engine.routes.draw do
  scope Smug.configuration.admin_route, as: "admin", module: "admin" do
    root "dashboards#show"

    resource :dashboard, only: [:show]

    Smug::Plugin.all.each do |plugin|
      resources plugin.route_key, plugin.route_options
    end
  end
end
