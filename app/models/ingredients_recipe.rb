class IngredientsRecipe < ActiveRecord::Base

  belongs_to :ingredient
  belongs_to :recipe

  validates :ingredient_id, uniqueness: { scope: :recipe_id }
  validates_presence_of :recipe_id, :quantity, :ingredient_id

end
