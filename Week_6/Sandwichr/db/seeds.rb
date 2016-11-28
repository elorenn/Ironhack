# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


sandwichA = Sandwich.create!(name: "Mediterranean Veggie", bread_type: "panini")
sandwichB = Sandwich.create!(name: "Elvis' Demise", bread_type: "marbled rye")
sandwichC = Sandwich.create!(name: "Falafel", bread_type: "whole grain pita")
sandwichC = Sandwich.create!(name: "Tuna Sandwich", bread_type: "hoagie")

ingA = Ingredient.create!(name: "Hummus", calories: 25)
ingB = Ingredient.create!(name: "Manchego Cheese", calories: 90)
ingC = Ingredient.create!(name: "Peanut Butter", calories: 188)
ingD = Ingredient.create!(name: "Strawberry Jam", calories: 50)
ingE = Ingredient.create!(name: "Banana", calories: 105)
ingF = Ingredient.create!(name: "Roasted Red Peppers", calories: 27)
ingG = Ingredient.create!(name: "Falafel Patty", calories: 57)
ingH = Ingredient.create!(name: "Tomato", calories: 9)
ingI = Ingredient.create!(name: "Spinach", calories: 7)
ingJ = Ingredient.create!(name: "Greek Yogurt Tahini Sauce", calories: 59)
ingK = Ingredient.create!(name: "Goat Cheese", calories: 103)
ingL = Ingredient.create!(name: "Pickles", calories: 3)
ingM = Ingredient.create!(name: "Tuna Salad", calories: 187)
ingN = Ingredient.create!(name: "Swiss Cheese", calories: 106)
ingO = Ingredient.create!(name: "Bacon", calories: 129)
ingP = Ingredient.create!(name: "Black Olives", calories: 10)

# SandwichIngredient.create!(sandwich: sandwichA, ingredient: ingA)
# SandwichIngredient.create!(sandwich: sandwichA, ingredient: ingB)
# SandwichIngredient.create!(sandwich: sandwichA, ingredient: ingF)

# SandwichIngredient.create!(sandwich: sandwichB, ingredient: ingC)
# SandwichIngredient.create!(sandwich: sandwichB, ingredient: ingD)
# SandwichIngredient.create!(sandwich: sandwichB, ingredient: ingE)