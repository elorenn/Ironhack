# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


projectA = Project.create!(name: "Ironhack")
projectB = Project.create!(name: "Edwardian Chairs", description: "Refurbing those two old chairs.")
projectC = Project.create!(name: "Clear Plastic Masks", description: "Artwork for new record")
projectD = Project.create!(name: "RTW", description: "plans for round the world trip")
projectE = Project.create!(name: "Underwater Globe", description: "Blueprints for spherical underwater home")
projectF = Project.create!(name: "Straddle Bus", description: "plans for new transportation method")
projectG = Project.create!(name: "Some other Project", description: "ideas for more projects")
projectH = Project.create!(name: "Juggalize-Me!", description: "app that superimposed juggalo makeup onto a photo of your face")
projectI = Project.create!(name: "Tailor Made", description: "app that connects you with a tailor")
projectJ = Project.create!(name: "Where do I go", description: "app that buys you a random plane ticket within a certain budget on a certain date")
	
# always use the ! after create, so that if something goes wrong, you'll get an error
# these are all equivalent ways of writing this:
TimeEntry.create!(hours: 2, minutes: 30, comments: "blah, blah", date: Date.today, project_id: projectA.id)
TimeEntry.create!(hours: 2, minutes: 30, comments: "blah, blah", date: Date.today, project: projectA)
projectA.time_entries.create!(hours: 2, minutes: 30, comments: "blah, blah", date: Date.today)
# that 3rd version works bcs projectA has many time entries

projectC.time_entries.create!(hours: 1, minutes: 15, comments: "Go Charlie", date: Date.today)
projectC.time_entries.create!(hours: 3, minutes: 0, comments: "Design back cover", date: Date.today + 2.days)
projectC.time_entries.create!(hours: 0, minutes: 45, comments: "Listen to stuff", date: Date.today - 3.days)