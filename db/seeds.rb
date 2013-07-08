# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# dairy, protein, carbohydrate, salt, alcohol, vegetable, fruit
milk = Ingredient.create! name: 'Milk', pic:'milk-carton.jpg'
eggs = Ingredient.create! name: 'Eggs', pic:'eggs.jpg'
chicken = Ingredient.create! name:''
salt = Ingredient.create! name:'salt'

r = Recipe.create! name: 'Eggs Benedict'
r.ingredients << eggs
r.save