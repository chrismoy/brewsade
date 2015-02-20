class BeerMatch < ActiveRecord::Base
  belongs_to :beer
  belongs_to :location
end
