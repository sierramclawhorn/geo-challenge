# geo-challenge
write a script or application that, given a reasonably well-formed address string like:

1770 Union St, San Francisco, CA 94115

returns the address of the geographically closest store from the dataset


## how it works

![screenshot](https://i.imgsafe.org/fb53ac5e40.png)

After researching, I decided to try the Georkit for Rails, as it utilizes the Google Maps API and makes sorting locations by distance easy! 
I parsed the CSV store locations file and added it to the database.

Within *app/helpers/locations_helper.rb* there are two methods: 
one whose *address* variable can be changed to any valid address string, and one that finds the closest store by comparing the former address to those in the database--which is populated with parsed data from the CSV file.
The distance is found using Haversine calculations, rather than Pythagoreum Theory, to account for spherical distance. 
The output printed to the screen gives the specified address and the (full) address of the closest store location. 
I also included a map with markers set on both addresses, so that there is a visual element of the distance. 
