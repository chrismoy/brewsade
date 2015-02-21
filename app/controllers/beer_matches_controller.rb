class BeerMatchesController < ApplicationController
  def create
    location = params[:location]
    beer = Beer.find(params[:beer])

    google_place = $client.spots(41.8826104, -87.6569993, name: location)[0]

    location = Location.new(name: google_place.name,
                            address: google_place.vicinity)

    if l = Location.find_by(address: location.address)
      l.beers << beer
      l.save
    else
      location.beers << beer
      location.save
    end

    redirect_to root_url

  end
end
