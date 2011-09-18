# encoding: UTF-8
# By Oto Brglez - <oto.brglez@opalab.com>

require 'bundler'

Bundler.require

# require 'sinatra/base'

class Dom < Sinatra::Base
	
	# set :root, File.dirname(__FILE__)
	set :public, "public"

	get '/' do
		@size = params[:size]
		@size ||= 60
		@locations = %w(Ljubljana Maribor Celje Velenje)
		@types = %w(Stanovanje Hiša Zemljišče)



		slim :home
	end
end