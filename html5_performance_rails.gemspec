# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'html5_performance_rails/version'

Gem::Specification.new do |spec|
  spec.name          = "html5_performance_rails"
  spec.version       = Html5PerformanceRails::VERSION
  spec.authors       = ["johnsinco"]
  spec.email         = ["lead.j2ee.engineer@gmail.com"]
  spec.description   = %q{A rails engine gem to include the html5 performance javascript}
  spec.summary       = %q{Simple gem wrapper around the html5_performance javascript for rails}
  spec.homepage      = "https://github.com/johnsinco/html5_performance_rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  # include the html5_performance project files
  spec.files << "html5_performance/html5_performance_stats.js"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
