require 'rake'

require 'fileutils'


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


desc "Livereload support via Grunt Livereload"
task :livereload do
  # require npm install grunt-contrib-watch --save-dev

  # Borrowed from https://github.com/jwebcat/rake-jekyll-grunt/blob/master/Rakefile
    gruntPid = Process.spawn({"GRUNT_ENV"=>"grunt"}, "grunt watch")

    trap("INT") {
      Process.kill(9, gruntPid) rescue Errno::ESRCH
      exit 0
    }

    Process.wait gruntPid
end


task :docs do

  doc_dir = 'docs'

  FileUtils.rm_rf('docs')
  system "compass compile -c compass.config.rb -e production"
  system "serve export . #{doc_dir}"
end


desc "Run app in dev mode"
multitask :run => [ 'serve', 'watch', 'livereload' ]