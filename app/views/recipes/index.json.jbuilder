json.array!(@recipes) do |recipe|
  json.extract! recipe, :name, :pic
  json.url recipe_url(recipe, format: :json)
end
