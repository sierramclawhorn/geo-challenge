module LocationsHelper

	# change address variable to any valid address string
	def given_address
		address = "1770 Union St, San Francisco, CA 94115"
	end

	def closest_store
		store = Location.closest(:origin => given_address)
		"#{store.first.address}, #{store.first.city}, #{store.first.state} #{store.first.zip_code}"
	end

end
