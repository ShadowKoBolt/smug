require "smug/version"
require "smug/engine"
require "smug/configuration"
require "smug/plugin"

require "bootstrap-sass"
require "slim-rails"
require "bootswatch-rails"
require "draper"

module Smug
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end
end
