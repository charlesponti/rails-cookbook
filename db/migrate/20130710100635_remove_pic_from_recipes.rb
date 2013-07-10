class RemovePicFromRecipes < ActiveRecord::Migration
  def change
    remove_column :recipes, :pic
  end
end
