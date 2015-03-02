class Location < ActiveRecord::Base
  validates :name, presence: true
  validates :address, presence: true

  has_many :beer_matches
  has_many :beers, :through => :beer_matches

  geocoded_by :address
  after_validation :geocode
end
