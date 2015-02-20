class Location < ActiveRecord::Base
  has_many :beer_matches
  has_many :beers, :through => :beer_matches
end
