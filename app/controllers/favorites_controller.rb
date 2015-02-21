class FavoritesController < ApplicationController
  def new
  end

  def create
    @favorite = Favorite.new
    @favorite.beer_id = params[:beer_id]
    if @favorite.save
      redirect_to :back
    else
      render 'locations/index', :alert => "Something went wrong"
    end
  end

  def destroy
    Favorite.find(params[:id]).destroy
    redirect_to root_url
  end
end
