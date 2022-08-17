# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts 'Creating 5 fake restaurants...'

Restaurant.destroy_all

5.times do
  restaurant = Restaurant.new(
    name:    Faker::Company.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    category: "chinese",
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
  )
  restaurant.save!
  puts "#{restaurant} Created "
end

Review.destroy_all

5.times do
  Restaurant.all.each do | resto |
    review = Review.new(
    rating:  rand(0..5),
    content: Faker::Restaurant.review,
    restaurant_id: resto.id,
    )
    review.save!
   puts "#{resto} #{review.rating} #{review.content}"
  end
end
