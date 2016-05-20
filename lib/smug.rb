require "rails"
require "bootstrap-sass"
require "slim-rails"
require "bootswatch-rails"
require "draper"

require "smug/version"
require "smug/engine"
require "smug/configuration"
require "smug/plugin"

module Smug
  class << self
    attr_writer :configuration

    def configuration
      @configuration || Configuration.new
    end
  end

  def self.configure
    self.configuration
    yield(configuration)
  end
end
