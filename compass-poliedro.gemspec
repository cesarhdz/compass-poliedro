# -*- encoding: utf-8 -*-
require './lib/compass-poliedro'

Gem::Specification.new do |gem|
  gem.name          = "compass-poliedro"
  gem.version       = Compass::Poliedro::VERSION
  gem.authors       = ["César Hernández"]
  gem.email         = ["mrshortcuts@gmail.com"]
  gem.description   = %q{Compass Extension with handy mixins}
  gem.summary       = %q{Compass Extension with handy mixins}
  gem.homepage      = ""

  gem.require_paths = ["lib"]

    # Gems Dependencies
  # Gem names and versions that are required for your Compass extension.
  # These are Gem dependencies, not Compass dependencies. Including gems
  #  here will make sure the relevant gem and version are installed on the
  #  user's system when installing your gem.
  gem.add_dependency("sass",      [">=3.2.0"])
  gem.add_dependency("compass",   [">= 0.12.1"])
end
