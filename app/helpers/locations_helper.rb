module LocationsHelper


	def closest_store
		near_store = Location.closest(:origin => given_address)
		"The closest store is #{near_store.first.store_name} located at #{near_store.first.address}"
	end



end
