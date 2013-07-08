class CreateIngredientsRecipes < ActiveRecord::Migration
  def change
    create_table :ingredients_recipes do |t|
      t.integer :ingredient_id
      t.integer :recipe_id

      t.timestamps
    end
    add_index :ingredients_recipes, :ingredient_id
    add_index :ingredients_recipes, :recipe_id
  end
end
