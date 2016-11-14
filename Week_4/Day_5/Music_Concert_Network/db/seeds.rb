# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


concertA = Concert.create!(artist:"Other Body", venue:"Churchhill's Pub", city:"Lemon City, FL", date: "2016-11-21 23:30:00 UTC", price: "19", description: "tunes with a Miami three piece lurking in the most punishing fringes of noise, rock, and experimental music.")
concertB = Concert.create!(artist:"The Gun Hoes", venue:"The Bar at 1306", city:"Miami, FL", date: "2016-11-11 21:00:00 UTC", price: "0", description: "self-produced, scuzzy tracks worth drinking your booze to.")
concertC = Concert.create!(artist:"Animal Collective", venue:"The Fillmore", city:"Miami Beach, FL", date: "2016-11-25 19:30:00 UTC", price: "50", description: "psychedelic freak folk with a dash of animal.") 
concertD = Concert.create!(artist:"Clear Plastic Masks", venue:"The Syndicate Lounge", city:"Birmingham, AL", date: "2016-11-15 19:30:00 UTC", price: "10", description: "bluesy, punk & soul-informed rock 'n' roll.")


concertA.comments.create!(user: "anonymous123", date: Date.today + 8.hours, comment: "So excited to see them live!") 
concertB.comments.create!(user: "anonymous456", date: Date.today + 15.hours, comment: "They have so much energy on stage. Must see!") 
concertB.comments.create!(user: "concertgoer789", date: Date.yesterday + 5.hours + 30.minutes, comment: "Can't wait!") 
concertD.comments.create!(user: "anonymous789", date: Date.tomorrow + 9.hours, comment: "Saw them in Nashville. Totally worth it!") 
concertC.comments.create!(user: "concertgoer456", date: Date.today + 10.hours, comment: "So excited! Who else is going?") 
concertC.comments.create!(user: "concertgoer123", date: Date.yesterday + 8.hours + 12.minutes, comment: "Anyone selling extra tix?") 



