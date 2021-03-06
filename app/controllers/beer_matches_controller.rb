class BeerMatchesController < ApplicationController
  def create
    location = params[:location]
    latitude = params[:latitude]
    longitude = params[:longitude]
    @beer = Beer.find(params[:beer])

    @google_place = $client.spots(latitude.to_f, longitude.to_f, name: location)[0]

    return nil if @google_place.nil?

    location = Location.new(name: @google_place.name,
                            address: @google_place.vicinity)

    if l = Location.find_by(address: location.address)
      l.beers << @beer
      l.save
    else
      location.beers << @beer
      location.save
    end

    respond_to do |format|
      format.html { redirect_to root_url }
      format.js
    end
  end
end
