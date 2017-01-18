class AddressesController < ApplicationController

	def create
		@input = Location.new(params[:id])
		redirect_to root_url
	end

end