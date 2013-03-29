# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'compass-poliedro/version'

Gem::Specification.new do |gem|
  gem.name          = "compass-poliedro"
  gem.version       = Compass::Poliedro::VERSION
  gem.authors       = ["César Hernández"]
  gem.email         = ["mrshortcuts@gmail.com"]
  gem.description   = %q{Compass Extension with handy mixins}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
