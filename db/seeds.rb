# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
Restaurant.destroy_all
puts "destroying all restaurants"

5.times do
  restaurants = Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.street_address, phone_number: Faker::PhoneNumber.cell_phone, category: CATEGORY.sample)
  puts "#{restaurants.name} is created"
end
