class FavoritesController < ApplicationController
  def new
  end

  def create
    @favorite = Favorite.new  # This action doesn't assign favorites a user. The first like I command lined to forace a user.
    @favorite.beer_id = params[:beer_id]
    @favorite.user = current_user
    if @favorite.save
      redirect_to :back
    else
      render 'locations/index', :alert => "Something went wrong"
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy

    respond_to do |format|
      format.html { redirect_to root_url }
      format.js
    end
  end
end
