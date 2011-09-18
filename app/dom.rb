# encoding: UTF-8

# By Oto Brglez - <oto.brglez@opalab.com>

require 'bundler'
require "json"
Bundler.require

class Dom < Sinatra::Base
	
	set :public, "public"

	get '/' do
		@size = params[:size]
		@size ||= 60
		@locations = %w(Ljubljana Maribor Celje Velenje)
		@types = %w(Stanovanje Hiša Zemljišče)
		slim :home
	end
		
end