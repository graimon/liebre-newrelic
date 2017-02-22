# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'liebre_newrelic/version'

Gem::Specification.new do |spec|
  spec.name          = "liebre-newrelic"
  spec.version       = LiebreNewRelic::VERSION
  spec.authors       = ["graimon"]
  spec.email         = ["graimon@gmail.com"]
  spec.summary       = %q{A gem to add newrelic instrumentation to liebre}
  spec.homepage      = "https://github.com/iadbox/liebre-newrelic"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "liebre", '~> 0.1', '>= 0.1.21'
  spec.add_runtime_dependency "newrelic_rpm", '~> 3.8', '>= 3.8.0'

  spec.add_development_dependency "bundler", '~> 1.6'
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake"
end
