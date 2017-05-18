class AddBackgroundToCocktails < ActiveRecord::Migration[5.0]
  def change
    add_column :cocktails, :background_link, :string
  end
end
