# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'smug/version'

Gem::Specification.new do |spec|
  spec.name          = "smug"
  spec.version       = Smug::VERSION
  spec.authors       = ["Nick Bolt"]
  spec.email         = ["nick@yoomee.com"]

  spec.summary       = %q{Write a short summary, because Rubygems requires one.}
  spec.description   = %q{Write a longer description or delete this line.}
  spec.homepage      = "http://www.google.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.test_files = Dir["spec/**/*"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency "factory_girl_rails"

  spec.add_dependency "rails", "~> 4.2"
  spec.add_dependency "bootstrap-sass", "~> 3.3.6"
  spec.add_dependency "slim-rails"
  spec.add_dependency "bootswatch-rails"
  spec.add_dependency "draper"
  spec.add_dependency "bh"
  spec.add_dependency "will_paginate"
  spec.add_dependency "will_paginate-bootstrap"
  spec.add_dependency "devise"
  spec.add_dependency "devise-bootstrap-views"
  spec.add_dependency "bootstrap-wysihtml5-rails"
  spec.add_dependency "simple_form"
end
