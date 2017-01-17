class Location < ApplicationRecord
	require 'csv'
		
	def self.import(file)	
		CSV.foreach('store-locations.csv', {headers: true, header_converters: :symbol}) do |row|
			# create a location for each row in CSV
			Location.create!(row.to_hash)
		end
	end
	
end
