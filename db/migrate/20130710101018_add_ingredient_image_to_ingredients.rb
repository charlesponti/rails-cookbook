class AddIngredientImageToIngredients < ActiveRecord::Migration
  def change
    remove_column :ingredients, :pic
    add_column :ingredients, :ingredient_image, :string
  end
end
