require "active_support/concern"

module  RouteInspection
  extend ActiveSupport::Concern

  class_methods do
    def route_options
      { only: item_actions }
    end

    def item_actions
      [:new, :create, :edit, :update, :destroy, :index]
    end
  end
end
