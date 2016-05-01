# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'icndb_client/version'

Gem::Specification.new do |spec|
  spec.name          = "icndb_client"
  spec.version       = Icndb::VERSION
  spec.authors       = ["abhilekh singh"]
  spec.email         = ["abhilekhsingh041992@gmail.com"]

  spec.summary       = %q{Ruby gem to interact with the icndb REST API.}
  spec.description   = %q{This gem makes it simple to interact with the official icndb REST API.}
  spec.homepage      = "https://github.com/abhilekhsingh041992/icndb-ruby-client"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec', '~> 3.4'

  spec.add_dependency 'httparty', '~> 0.13.7'
end
