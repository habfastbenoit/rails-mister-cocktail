class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save
    redirect_to cocktail_path(@cocktail)
  end

  def edit
  end

  def update
  end

  def show
  end

  def delete
  end

  private
  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
