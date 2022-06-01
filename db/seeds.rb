# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

city1 = City.create(name: "New York")
city2 = City.create(name: "London")
city3 = City.create(name: "Paris")
city4 = City.create(name: "Tokyo")

item1 = Item.create(name: "Shirts", quantity: "120", city_id: city1.id)
item2 = Item.create(name: "Pants", quantity: "80", city_id: city2.id)
item3 = Item.create(name: "Shoes", quantity: "250", city_id: city3.id)
item4 = Item.create(name: "Socks", quantity: "140", city_id: city4.id)
