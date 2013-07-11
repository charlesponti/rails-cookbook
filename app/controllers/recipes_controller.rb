class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]
  #before_filter :authenticate, only: [:new, :create, :edit, :update, :destroy]

  def index
    @recipes = Recipe.all
  end
  
  def search
    @q = Recipe.search(params[:q])
    @recipe = @q.result.first
    if !@recipe
      flash[:error] = "No matches for #{params[:q][:name_cont]}"
      redirect_to root_url
    else
      render :show
    end
  end

  def show
  end

  def new
    @recipe = Recipe.new
  end

  def edit
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user_id = current_user.id
    respond_to do |format|
      if @recipe.save
        format.html { redirect_to @recipe, notice: 'Recipe was successfully created.' }
        format.json { render action: 'show', status: :created, location: @recipe }
      else
        format.html { render action: 'new' }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    binding.pry
    respond_to do |format|
      if @recipe.update(recipe_params)
        format.html { redirect_to @recipe, notice: 'Recipe was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @recipe.destroy
    respond_to do |format|
      format.html { redirect_to '/dashboard' }
      format.json { head :no_content }
    end
  end

  private
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    def recipe_params
      params.require(:recipe).permit(:name, :recipe_image, :directions, :category_id, :user_id, :ingredients_recipes_attributes => [:ingredient_id, :quantity, :id, :_destroy] )
    end
end
