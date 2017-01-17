require 'sinatra/base'
require 'csv'

class StoreLocator < Sinatra::Base  
	get '/' do    
		'Hello World!'  
	end
end