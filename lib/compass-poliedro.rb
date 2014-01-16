require 'compass'
require "compass-poliedro/version"


module Compass
  module Poliedro
  	# Registering Extension
	extension_path = File.expand_path(File.join(File.dirname(__FILE__), ".."))
	Compass::Frameworks.register('compass-poliedro', :path => extension_path)
  end
end
