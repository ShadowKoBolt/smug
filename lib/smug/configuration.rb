module Smug
  class Configuration
    attr_accessor :admin_route

    def initialize
      @admin_route = "admin"
    end
  end
end
