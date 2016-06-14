module Smug
  class Engine < ::Rails::Engine
    isolate_namespace Smug
    config.to_prepare do
      Devise::SessionsController.layout "smug/admin_no_nav"
    end
  end
end
