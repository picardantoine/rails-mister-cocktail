require 'open-uri'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Ingredient.destroy_all

puts 'Creating ingredients...'
# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")
# Ingredient.create(name: "champagne")
# Ingredient.create(name: "rhum")
# Ingredient.create(name: "gin")
# Ingredient.create(name: "cucumber")
# Ingredient.create(name: "rasberries")
# Ingredient.create(name: "aperol")
# Ingredient.create(name: "orange")

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
response = open(url).read
json = JSON.parse(response)
json["drinks"].each do |result|
  ingredient_name = result["strIngredient1"]
  Ingredient.create(name: ingredient_name)
end

puts 'Finished!'
