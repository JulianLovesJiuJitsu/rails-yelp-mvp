# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating new restaurants..."
hannibal = { name: "Hannibal", address: "Berlin", phone_number: "01797195195", category: "chinese"}
loco = { name: "El Loco", address: "Munich", phone_number: "017356695195", category: "belgian"}
bloop = { name: "The Bloop", address: "Hamburg", phone_number: "01797975195", category: "japanese"}
snap = { name: "Oh Snap", address: "New York", phone_number: "01597120195", category: "italian"}
merde = { name: "Merde Jolie", address: "Paris", phone_number: "01297195195", category: "french"}

[ hannibal, loco, bloop, snap, merde ].each do |attr|
  restaurant = Restaurant.create!(attr)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
