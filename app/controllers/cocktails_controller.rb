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
    @cocktail = Cocktail.find(params[:id])

  end

  def update
  end

  def show
    @cocktail = Cocktail.find(params[:id])

    @doses = @cocktail.doses
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy
    respond_to do |format|
      format.html { redirect_to @cocktail, notice: 'Cocktail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def cocktail_params
    params.require(:cocktail).permit(:name, :background_link)
  end
end
