# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'basic_search/version'

Gem::Specification.new do |spec|
  spec.name          = "basic_search"
  spec.version       = BasicSearch::VERSION
  spec.authors       = ["Daniel Grawunder, Christian Mierich"]
  spec.email         = ["gramie.sw@gmail.com"]
  spec.description   = %q{A Ruby on Rails basic table sorter gem}
  spec.license       = "EPL 1.0"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec"
  #spec.add_development_dependency "bundler", "~> 1.3"
  #spec.add_development_dependency "rake"
end
