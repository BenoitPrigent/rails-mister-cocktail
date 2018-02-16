# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'json'

puts 'Cleaning ingredient database...'

puts 'Creating ingredients...'

url="http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
url_serialized= open(url).read
ingredients = JSON.parse(url_serialized)

for num in [10, 11, 12]
  p "--" + name = ingredients["drinks"][num]["strIngredient1"]
  Ingredient.create(name: name)
end

puts "Finished!"


puts 'Cleaning cocktail database...'
Cocktail.destroy_all

Cocktail.create(name: "Test-Cocktail")


puts 'Cleaning dose database'
Dose.destroy_all
