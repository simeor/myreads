# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all

Category.create(name: "Science Fiction")
Category.create(name: "Biography")
Category.create(name: "Memoir")
Category.create(name: "Business")
Category.create(name: "Poetry")
Category.create(name: "Romance")
Category.create(name: "Horror")
Category.create(name: "Thriller")
Category.create(name: "Classics")
Category.create(name: "Young Adult")
Category.create(name: "Comedy")
Category.create(name: "Non-fiction")
