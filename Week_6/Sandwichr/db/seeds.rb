# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


sandwichA = Sandwich.create!(name: "Mediterranean Veggie", bread_type: "whole grain")
sandwichB = Sandwich.create!(name: "Elvis' Demise", bread_type: "marbled rye")

ingA = Ingredient.create!(name: "Hummus", calories: 25)
ingB = Ingredient.create!(name: "Manchego Cheese", calories: 90)
ingC = Ingredient.create!(name: "Peanut Butter", calories: 188)
ingD = Ingredient.create!(name: "Strawberry Jam", calories: 50)
ingE = Ingredient.create!(name: "Banana", calories: 105)
ingF = Ingredient.create!(name: "Roasted Red Peppers", calories: 27)

SandwichIngredient.create!(sandwich: sandwichA, ingredient: ingA)
SandwichIngredient.create!(sandwich: sandwichA, ingredient: ingB)
SandwichIngredient.create!(sandwich: sandwichA, ingredient: ingF)

SandwichIngredient.create!(sandwich: sandwichB, ingredient: ingC)
SandwichIngredient.create!(sandwich: sandwichB, ingredient: ingD)
SandwichIngredient.create!(sandwich: sandwichB, ingredient: ingE)