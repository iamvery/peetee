# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'peetee/version'

Gem::Specification.new do |spec|
  spec.name          = "peetee"
  spec.version       = Peetee::VERSION
  spec.authors       = ["Brandon Beacher"]
  spec.email         = ["brandon.beacher@gmail.com"]
  spec.summary       = "A client for Pivotal Tracker's REST API v5"
  spec.homepage      = "https://github.com/brandon-beacher/peetee"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rest-client", "~> 1.6.7"
  spec.add_dependency "virtus", "~> 1.0.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "dotenv", "~> 0.9.0"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.14.1"
  spec.add_development_dependency "vcr", "~> 2.8.0"
  spec.add_development_dependency "webmock", "~> 1.16.0"
end
