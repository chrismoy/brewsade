beers = [["Special Forces IPA", "Crown Brewery", "IPA"],
["McCarthy Red Ale", "Emmett's Brewing Company", "Amber Ale"],
["Victory Pale Ale", "Emmett's Brewing Company", "American Pale Ale"],
["Where Lizards Dare", "Figure Eight Brewing", "American IPA"],
["Cut Throat", "Finch Brewery", "Porter"],
["5 Lizard", "5 Rabbit Brewery", "Wheat Beer"],
["Lincolnshire Lager", "Flatlander Brewery", "Lager"],
["Gandy Dancer Honey Ale", "Flossmoor Station Brewery", "American Pale Ale"],
["Iron Horse Stout", "Flossmoor Station Brewery", "Milk Stout"],
["Pullman Brown Ale", "Flossmoor Station Brewery", "American Brown Ale"],
["Pepe Nero", "Goose Island", "Saison"],
["Sofie", "Goose Island", "Saison"],
["Daisy Cutter Pale Ale", "Half Acre", "American Pale Ale"],
["Over Ale", "Half Acre", "American Brown Ale"],
["Gangster Hopped-Up Amber Ale", "Andersonville Brewing"],
["Mathias Imperial IPA", "Haymarket", "IPA"],
["Flying Pig Imperial IPA", "Limestone", "IPA"],
["Wheatlander", "Limestone", "Hefeweizen"],
["Fallen Angel Amber Lager", "Lucky Monk", "Amber Lager"],
["Total Eclipse Stout", "Lunar Brewing", "Imperial stout"],
["Flywheel", "Metropolitan", "German Pilsener"],
["Krankshaft", "Metropolitan", "Kölsch"],
["847 Suburban Wheat Ale", "Mickey Finn's Brewery", "American Amber Pale Ale"],
["Able Danger", "Moonshine", "Imperial IPA"],
["Golden Arm", "Piece Brewery", "Kölsch"],
["Bottom Up Wit", "Revolution Brewing", "Witbier"],
["Eugene", "Revolution Brewing", "Porter"],
["Alpha King American Pale Ale", "Three Floyds"], "American Pale Ale",
["Dreadnaught Imperial IPA", "Three Floyds", "Imperial IPA"],
["Gumballhead", "Three Floyds", "American Pale Wheat Ale"],
["Robert the Bruce Scottish Ale", "Three Floyds", "Scottish Ale"],
["Cane and Ebel", "Two Brothers Tap House", "Rye Beer"],
["Long Haul Session Ale", "Two Brothers Tap House", "English Bitter"],
["Replicale 2010 (Centennial)", "Onion Brew Pub", "American Pale Ale"],
["Wheat", "Harrison Brew Pub", "American Pale Wheat Ale"],
["State St. Pilsner", "Stockholm Brew Pub", "Pilsener"],
["Dark Satin German Dunkel", "Taylor Brewing", "Dunkel"]]

beer_count = 0

beers.each do |name, brewery, type|
  beer = Beer.create(name: name, brewery: brewery, label_url: "N/A", description: "N/A",
                      beer_type: type)
  beer_count += 1
end

puts "#{beer_count} beers have been added to the database"

locations = []

location_count = 0

locations.each do |name, address|
  location = Location.create(name: name, address: address)
  location_count += 1
end

puts "#{location_count} locations have been added to the database"




