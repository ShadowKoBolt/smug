require "active_support/concern"

module  RouteInspection
  extend ActiveSupport::Concern

  class_methods do
    def route_options
      { except: [:show] }
    end
  end
end
