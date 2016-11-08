# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


contactA = Contact.create!(name:"Alley", address:"84 NW 60th st", phone_number:"111-1111", email_address:"alley@example.com")
contactB = Contact.create!(name:"Laura", address:"4220 sw 2nd ter", phone_number:"222-2222", email_address:"laura@example.com")
contactC = Contact.create!(name:"Miggs", address:"54 NW 62th st", phone_number:"333-3333", email_address:"miggs@example.com")