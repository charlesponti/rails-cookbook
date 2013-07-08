class Ingredient < ActiveRecord::Base
  belongs_to :food_type
  has_many :ingredients_recipes
  has_many :recipes, through: :ingredients_recipes
end
