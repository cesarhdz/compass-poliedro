module ViewHelpers
  	def url_for(uri)
    	base = ENV['SERVE_URL'] || '/'
    	"#{base}#{uri}"
  	end

  	def is_dev?
  		!(ENV['SERVE_URL']) || false
  	end
end