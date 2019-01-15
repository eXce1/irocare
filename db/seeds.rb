# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Alert.destroy_all
Band.destroy_all
User.destroy_all
Bridge.destroy_all

# Appointment.destroy_all

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

puts "Creating 5 bands..."
5.times do |index|
  Band.create!([
{
  last_connexion: Faker::Date.backward(5),
  wear: [true, false].sample,
  user_id: User.first.id,
  bridge_id: Bridge.first.id,
}
])
end
puts "5 bandes created."

puts "Creating alerts..."
# type_list = ["Fugue","Batterie faible", "Chute", "Perte bracelet"]
location = ["Etage 2","Cantine","Etage 1", "Accueil", "Sport", "Salle A", "Salle B"]
4.times do |index|
  Alert.create!([
{
  date: Faker::Date.backward(2),
  # type: ["Fugue","Batterie faible", "Chute", "Perte bracelet"].sample,
  location: location.sample,
  acquittement: false,
  band_id: Band.first.id,
}
])
end
puts "Alerts created."

# puts "Creating appointments..."$
# location = ["Salle A", "Salle B", "Sport", "Salle C", "Salle D", "Accueil"]
# duration = ["15","30","45"]
# 5.times do |index|
#   Appointment.create!([
# {
#   date: Faker::Date.forward(10),
#   location = location.sample,
#   duration = duration.sample,
#   doctor: Faker::Name.name
# ])
# puts 'Few appointments created.'

puts "Seeds successfully loaded."


