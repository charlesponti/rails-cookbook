class Recipe < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :ingredients_recipes
  has_many :ingredients, through: :ingredients_recipes

  mount_uploader :recipe_image, RecipeImageUploader

  accepts_nested_attributes_for :ingredients_recipes, allow_destroy: true
end
