class BeerMatch < ActiveRecord::Base
  # validates :beer_id, presence: true #, uniqueness: { scope: :location_id }
  # validates :location_id, presence: true

  belongs_to :beer
  belongs_to :location

  after_save :find_beer_followers

  def find_beer_followers
    follower_ids = Favorite.where(:beer_id => self.beer.id).collect { |favorite| favorite[:user_id] }
    followers = User.where(:id => follower_ids)
    followers.each do |follower|
      # beer_message(follower)
    end
  end

  def beer_message(follower)
    client = Twilio::REST::Client.new ENV['twilio_account_sid'], ENV['twilio_auth_token']

    client.account.messages.create({
      :from => '+17089720240',
      :to   => "+1#{follower.phone}",
      :body => "#{self.beer.name} was spotted at #{self.location.name}",
    })
  end
end
