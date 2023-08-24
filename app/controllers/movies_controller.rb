class MoviesController < ApplicationController
  before_action :set_restaurant, only: %i[show]
  def index
    @movies = Movie.all
  end

  def show; end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

end
