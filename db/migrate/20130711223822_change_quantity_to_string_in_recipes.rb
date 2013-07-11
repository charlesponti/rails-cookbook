class ChangeQuantityToStringInRecipes < ActiveRecord::Migration
  def change
    change_column :ingredients_recipes, :quantity, :string
  end
end
