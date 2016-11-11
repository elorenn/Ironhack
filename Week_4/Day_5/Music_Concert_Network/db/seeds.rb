# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


concertA = Concert.create!(artist:"Other Body", venue:"Churchhill's Pub", city:"Lemon City, FL", price: "19", description: "Miami three piece lurking in the most punishing fringes of noise, rock, and experimental music.")
concertB = Concert.create!(artist:"The Gun Hoes", venue:"The Bar at 1306", city:"Miami, FL", price: "0", description: "Self-produced, scuzzy tracks worth drinking your booth to.")
concertC = Concert.create!(artist:"Animal Collective", venue:"The Fillmore", city:"Miami Beach, FL", price: "50", description: "Psychedelic freak folk with a dash of animal.")