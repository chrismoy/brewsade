class Beer < ActiveRecord::Base
  has_many :favorites
  has_many :beer_matches
  has_many :locations, :through => :beer_matches
end
