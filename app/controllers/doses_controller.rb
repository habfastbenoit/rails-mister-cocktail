class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredients = Ingredient.all
    @dose = Dose.new

  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredients = Ingredient.all
    @dose = Dose.new(ingredient_params)
    respond_to do |format|

      if @dose.save
        format.html { redirect_to cocktail_path(@dose.cocktail), notice: 'Edit was successful.' }
        format.json { render :show, status: :created, location: @dose }
      else
        format.html { render :new }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end


  def edit
    @dose = Dose.find(params[:id])
    @cocktail = @dose.cocktail
    @ingredient = @cocktail
  end

  def update
  @dose = Dose.find(params[:id])
  @cocktail = @dose.cocktail

  respond_to do |format|
      if @dose.update(ingredient_params)
        format.html { redirect_to @cocktail, notice: 'dose was successfully edited.' }
        format.json { render :show, status: :ok, location: @restaurant }
      else
        format.html { render :edit }
        format.json { render json: @cocktail.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @cocktail = @dose.cocktail
    @dose.destroy
    respond_to do |format|
      format.html {   redirect_to @cocktail, notice: 'Ingredient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def ingredient_params
    params.require(:dose).permit(:ingredient_id, :description, :cocktail_id)
  end

end
