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
puts "One admin created."

puts "Creating patients accounts..."
email = ["patient1@gmail.com","patient2@gmail.com","patient3@gmail.com","patient4@gmail.com","patient5@gmail.com"]
password = ["patient1", "patient2","patient3", "patient4","patient5"]
5.times do |index|
  User.create!([
{
  email: email[index],
  password: password[index],
  role: "patient"
}
])
end
puts "5 patients created."


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
puts "5 bridges created."

puts "Seeds successfully loaded."
