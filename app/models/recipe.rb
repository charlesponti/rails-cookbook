class Recipe < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :ingredients_recipes
  has_many :ingredients, through: :ingredients_recipes
end
