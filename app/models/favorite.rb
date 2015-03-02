class Favorite < ActiveRecord::Base
  validates :beer_id, presence: true, uniqueness: { scope: :user_id }
  validates :user_id, presence: true

  belongs_to :beer
  belongs_to :user
end
