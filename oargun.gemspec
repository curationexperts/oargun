# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'oargun/version'

Gem::Specification.new do |spec|
  spec.name          = "oargun"
  spec.version       = Oargun::VERSION
  spec.authors       = ["Justin Coyne"]
  spec.email         = ["justin@curationexperts.com"]
  spec.summary       = %q{A mechanism for controlled vocabularies in activefedora models}
  spec.description   = %q{}
  spec.homepage      = ""
  spec.license       = "APACHE2"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "webmock", "~> 1.20"

  spec.add_dependency "activesupport", "~> 4.0"
  spec.add_dependency 'rest-client', '~> 1.7'
  spec.add_dependency 'linked_vocabs', '~> 0.2'
  spec.add_dependency 'rdf-vocab', '~> 0.8'
  spec.add_dependency 'active-triples', '>= 0.7.5'
  spec.add_dependency 'active-fedora', '~> 9.0'
end
