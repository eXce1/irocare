# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.destroy_all
Bridge.destroy_all

puts "Creating admins accounts..."

User.create!([
{
  email: "admin@gmail.com",
  password: "toto13",
  role: "admin"
}
])


puts "Creating Bridge..."

location = ["","Cantine","Etage 1", "Accueil", "Sport"]
fugue = ["", "non", "non", "oui", "non"]
5.times do |index|
  Bridge.create!([
{
  location: location[index],
  fugue: fugue[index],
  last_connexion: Faker::Date.backward(5)
}
])
end

puts "Seeds successfully loaded."
