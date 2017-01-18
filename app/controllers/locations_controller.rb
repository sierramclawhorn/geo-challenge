class LocationsController < ApplicationController

	def index
		@locations = Location.all
	end

	def import
		Location.import(params[:file])
		redirect_to root_url
	end

end
