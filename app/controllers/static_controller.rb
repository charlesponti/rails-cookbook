class StaticController < ApplicationController
  def home
    @q = Recipe.search(params[:q])
    @recipes = @q.result
    @top_recipe = Recipe.last
  end

  def about
  end

  def contact
  end

  def search
  end
  
end
