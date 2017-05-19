class AddCocktailbannerToCocktail < ActiveRecord::Migration[5.0]
  def change
    add_column :cocktails, :cocktailbanner, :string
  end
end
