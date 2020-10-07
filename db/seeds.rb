# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

user1 = User.create!(name: Faker::TvShows::NewGirl.character, email: "#{Faker::Space.planet}@newgirl.com")
user2 = User.create!(name: Faker::TvShows::NewGirl.character, email: "#{Faker::Space.planet}@newgirl.com")
user3 = User.create!(name: Faker::TvShows::NewGirl.character, email: "#{Faker::Space.planet}@newgirl.com")

book1 = Book.create(user: user1, title: Faker::Book.title)
book2 = Book.create(user: user1, title: Faker::Book.title)
book3 = Book.create(user: user2, title: Faker::Book.title)
book4 = Book.create(user: user2, title: Faker::Book.title)
book5 = Book.create(user: user2, title: Faker::Book.title)
book6 = Book.create(user: user3, title: Faker::Book.title)
book7 = Book.create(user: user3, title: Faker::Book.title)
book8 = Book.create(user: user3, title: Faker::Book.title)
book9 = Book.create(user: user3, title: Faker::Book.title)

User.all.each do |user|
  p "#{user.name}:"
  user.books.each do |book|
    p "  #{book.title}"
  end
end
