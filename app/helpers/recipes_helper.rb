module RecipesHelper
  def owner?
    @recipe.user_id == current_user.id
  end
end
