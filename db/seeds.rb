# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all

puts 'Creating categories...'

gin = Cocktail.create!(name: "Gin Tonic")
sunrise = Cocktail.create!(name: "Tequila Sunrise")
caipirinha = Cocktail.create!(name: "Caipirinha")
punch = Cocktail.create!(name: "Ti Punch")

lemon = Ingredient.create(name: "lemon")
ice = Ingredient.create!(name: "ice")
menthol = Ingredient.create!(name: "menthol")
salt = Ingredient.create!(name: "salt")
tequila = Ingredient.create!(name: "tequila")
perrier = Ingredient.create!(name: "perrier")
gin = Ingredient.create!(name: "Bombay")

Dose.create!(description: "12cl de Gin, 1 rondelle de concombre et du Schweppes", cocktail_id: gin.id, ingredient_id: gin.id)
Dose.create!(description: "9cl de rhum et du jus d'orange", cocktail_id: sunrise.id, ingredient_id: tequila.id)
Dose.create!(description: "9cl de cachaça, des glaçons et un citron vert", cocktail_id: caipirinha.id, ingredient_id: caipirinha.id)
Dose.create!(description: "12cl de rhum, du citron vert et de la cassonade", cocktail_id: punch.id, ingredient_id: punch.id)

puts 'Finished!'
