class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    respond_to do |format|
      if @cocktail.save
        format.html { redirect_to cocktail_path(@cocktail), notice: 'New cocktail was created' }
        format.json { render :show, status: :created, location: @cocktail }
      else
        format.html { render :new }
        format.json { render json: @cocktail.errors, status: :unprocessable_entity }
      end
    end

  end

  def edit
    @cocktail = Cocktail.find(params[:id])

  end

  def update
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @ingredients = Ingredient.all
    @dose = Dose.new
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
    params.require(:cocktail).permit(:name, :background_link, :cocktailbanner, :cocktailbanner_cache)
  end
end
