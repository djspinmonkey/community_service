# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'community_service/version'

Gem::Specification.new do |spec|
  spec.name          = "community_service"
  spec.version       = CommunityService::VERSION
  spec.authors       = ["John Hyland"]
  spec.email         = ["john@djspinmonkey.com"]
  spec.summary       = %q{A support library for a simple service architecture.}
  spec.description   = %q{A support library for a simple service architecture. Handles service discovery using SRV DNS records, assumes JSON over HTTP communication, and tends toward lightweight approaches for everything.}
  spec.homepage      = "http://github.com/djspinmonkey/community_service"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
