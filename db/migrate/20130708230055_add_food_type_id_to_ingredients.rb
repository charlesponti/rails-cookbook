class AddFoodTypeIdToIngredients < ActiveRecord::Migration
  def change
    add_column :ingredients, :food_type_id, :integer
  end
end
