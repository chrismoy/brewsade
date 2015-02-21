class Favorite < ActiveRecord::Base
  belongs_to :beer
  belongs_to :user

  validates :beer_id, :presence => true
end
