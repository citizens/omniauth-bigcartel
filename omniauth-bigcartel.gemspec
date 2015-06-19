# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/bigcartel/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-bigcartel"
  spec.version       = Omniauth::Bigcartel::VERSION
  spec.authors       = ["Dylan Montgomery"]
  spec.email         = ["mail@citizensinspace.com"]

  spec.summary       = "OmniAuth strategy for Bigcartel"
  spec.homepage      = "https://github.com/citizens/omniauth-bigcartel"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "omniauth-oauth2", "~> 1.0"
end
