# encoding: UTF-8

# By Oto Brglez - <oto.brglez@opalab.com>

require 'bundler'
require "json"
Bundler.require

class Dom < Sinatra::Base
	
	set :public, "public"

	get '/' do

		@token = params[:token]
		@token ||= "none"
		@size = params[:size]
		@size ||= 0
		
		@locations = %w(Ljubljana Maribor Celje Velenje Kranj Koper Ptuj Trbovlje Kamnik Lucija Logatec)
		@types = %w(Stanovanje Hiša Zemljišče)
		slim :home
	end
		
end