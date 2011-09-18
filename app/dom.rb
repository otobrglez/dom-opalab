# By Oto Brglez - <oto.brglez@opalab.com>

require 'bundler'

Bundler.require

# require 'sinatra/base'

class Dom < Sinatra::Base
	
	get '/' do
		slim :home
	end

end