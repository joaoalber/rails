class HomeController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipes = Recipe.find(params[:id])
  end

end
