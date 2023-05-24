# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese", phone_number: "01 30 97 45 34"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "japanese", phone_number: "01 30 97 24 34"}
la_famille =  {name: "La Famille", address: "Euratehcnologies, Lebois Leblanc", category: "italian", phone_number: "01 76 97 45 34"}
chez_vincent =  {name: "Chez Vincent", address: "Zone commerciale Farman, 51100 Reims", category: "french", phone_number: "01 30 13 45 34"}
istanbul =  {name: "Istambul", address: "156 rue des mouchards, 75005 Paris", category: "belgian", phone_number: "01 30 97 45 76"}


[dishoom, pizza_east, la_famille, chez_vincent, istanbul].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
