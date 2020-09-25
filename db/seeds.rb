# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'

Category.destroy_all
Book.destroy_all

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



url = "https://gist.githubusercontent.com/simeor/7db5681f7102151547a2589cdabf21d7/raw/2e379e05cad5bf828ee1e5910a0263985d7753f4/books.json"
books_serialized = open(url).read
books_list = JSON.parse(books_serialized)


books_list.each do |book|
 Book.create(title: book['title'], author: book['author'], summary:"", year: book['year'],  category_id: 1 )
 p "created #{book['title']}"
end
