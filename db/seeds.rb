# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Location.create(name: "CUU")
Location.create(name: "HMO")
Location.create(name: "CDMX")
Equipment.create(name: "Apple Magic Keyboard", description: "Completely redesigned, the Magic Keyboard features a built-in rechargeable battery and enhanced keys.")
Equipment.create(name: "Apple Magic Mouse", description: "The all new Magic Mouse 2 features a rechargeable battery and simplified design for an improved experience.")
Relationship.create(equipment_id: 1, location_id: 1, quantity: 3)
Relationship.create(equipment_id: 1, location_id: 2, quantity: 4)
Relationship.create(equipment_id: 1, location_id: 3, quantity: 0)
Relationship.create(equipment_id: 2, location_id: 1, quantity: 10)
Relationship.create(equipment_id: 2, location_id: 2, quantity: 1)
Relationship.create(equipment_id: 2, location_id: 3, quantity: 0)