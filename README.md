# geo-challenge
write a script or application that, given a reasonably well-formed address string like:

1770 Union St, San Francisco, CA 94115

returns the address of the geographically closest store from the dataset


## how it works
After researching, I decided to try Georkit for Rails, as it utilizes the Google Maps API and makes sorting locations by distance easy! 

Within *app/helpers/locations_helper.rb* there are two methods: 
one whose 'address' variable can be changed to any valid address string, and one that finds the closest store by comparing the former address to those in the db.
The distance is found using Haversine calculations, rather than Pythagoreum Theory, to account for spherical distance. 
