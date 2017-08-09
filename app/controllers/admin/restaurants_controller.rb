class Admin::RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def destroy
    @restaurant.destroy
  end

end
