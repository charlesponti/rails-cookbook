class StaticController < ApplicationController
  def home
    @recipes = Recipe.all
    @top_recipe = Recipe.last
  end

  def about
  end

  def contact
  end
end
