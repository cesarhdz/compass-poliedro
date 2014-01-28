#\ -p 4000

require 'serve'
require 'serve/rack'

# The project root directory
root = ::File.dirname(__FILE__)


# Other Rack Middleware
use Rack::ShowStatus      # Nice looking 404s and other messages
use Rack::ShowExceptions  # Nice looking errors

# Rack Application
if ENV['SERVER_SOFTWARE'] =~ /passenger/i
  # Passenger only needs the adapter
  run Serve::RackAdapter.new(root + '/views')
else
  # Use Rack::TryStatic to attempt to load files from public first
  require 'rack/contrib/try_static'
  use Rack::TryStatic, :root => (root + '/public'), :urls => %w(/), :try => %w(.html index.html /index.html)

  # Use Rack::Cascade and Rack::Directory on other platforms for static assets
  run Rack::Cascade.new([
    Serve::RackAdapter.new(root + '/views'),
    Rack::Directory.new(root + '/public')
  ])
end
