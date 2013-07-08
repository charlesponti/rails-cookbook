class CreateIngredientsRecipesTable < ActiveRecord::Migration
  def change
    create_table :ingredients_recipes_tables, id: false do |t|
      t.references :ingredient
      t.references :recipe
    end
  end
end
