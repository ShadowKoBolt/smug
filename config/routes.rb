Smug::Engine.routes.draw do
  scope Smug.configuration.admin_route, as: "admin", module: "admin" do
    resource :dashboard
  end
end

Rails.application.routes.draw do
  Smug::Plugin.all.each do |plugin|
    scope module: :smug do
      scope Smug.configuration.admin_route, as: "admin", module: "admin" do
        resources plugin.route_key, plugin.route_options
      end
    end
  end
end
