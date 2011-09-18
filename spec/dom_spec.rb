require_relative "spec_helper"
require "pp"

# set :environment, :test

describe "Dom application" do

	include Rack::Test::Methods

	def app
    	@app ||= Dom # Sinatra::Application
  	end

	it "should respond to /" do
		get '/'
    	last_response.should be_ok
	end

	it "should respond to /?size" do
		get '?size=40'
		last_response.should be_ok
	end

end