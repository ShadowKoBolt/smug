require "active_support/concern"

module DashboardInspection
  extend ActiveSupport::Concern

  class_methods do
    def display_in_nav?
      true
    end
  end
end
