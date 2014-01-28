require 'rake'


desc "serve alias"
task :serve do
	port = "4000"

    puts "Inicializando serve"
    system "serve #{port}"
end


desc "Compass watch alias"
task :watch do
	system "compass watch -c compass.config.rb"
end



desc "Run serve and watch compass files"
multitask :dev => [ 'serve', 'watch' ]