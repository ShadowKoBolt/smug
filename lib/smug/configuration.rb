module Smug
  class Configuration
    attr_accessor :admin_route, :additional_js, :additional_css

    def initialize
      @admin_route = "admin"
      @additional_js = []
      @additional_css = []
    end
  end
end
