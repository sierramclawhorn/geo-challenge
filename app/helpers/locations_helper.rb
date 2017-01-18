module LocationsHelper

	def input_address
		puts "Enter an address: "
		address = "4079 NC 903 South, Winterville, NC 28590"
	end

	def closest_store
		near_store = Location.closest(:origin => input_address)
		"The closest store is #{near_store.first.store_name}, located at #{near_store.first.address}"
	end

end
