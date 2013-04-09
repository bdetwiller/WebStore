# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: "Aaron.rama@gmail.com", password: "123")
User.create(email: "bryant.detwiller@gmail.com", password: "123")

Product.create(name: "Mac Mini", price: 800)
Product.create(name: "Monitor that works", price: 300)
Product.create(name: "Taco", price: 4)