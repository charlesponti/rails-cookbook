json.array!(@ingredients) do |ingredient|
  json.extract! ingredient, :name, :pic
  json.url ingredient_url(ingredient, format: :json)
end
