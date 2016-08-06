require "rails"
require "bootstrap-sass"
require "slim-rails"
require "bootswatch-rails"
require "draper"
require "bh"
require "will_paginate"
require "will_paginate-bootstrap"
require "devise"
require "devise-bootstrap-views"
require "bootstrap-wysihtml5-rails"
require "simple_form"
require "cocoon"
require "refile/rails"
require "refile/mini_magick"

require "smug/version"
require "smug/engine"
require "smug/configuration"
require "smug/plugin"

module Smug
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end
end
