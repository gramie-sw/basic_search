# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'basic_search/version'

Gem::Specification.new do |gem|
  gem.name          = "basic_search"
  gem.version       = BasicSearch::VERSION
  gem.authors       = ["Daniel Grawunder, Christian Mierich"]
  gem.email         = ["gramie.sw@gmail.com"]
  gem.description   = %q{A Ruby on Rails basic search gem}
  gem.summary = %q{An easy to use basic search solution for Ruby on Rails.}
  gem.license       = "EPL 1.0"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}) { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "rspec", "~> 2.13"
  gem.add_development_dependency "activesupport", "~>3.2"
  gem.add_development_dependency "guard-rspec", "~>2.6.0"
end
