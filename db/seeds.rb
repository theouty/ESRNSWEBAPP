# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Clothe.destroy_all
User.destroy_all




retro = Clothe.create(apparel: "Hoodie", style: "Surfer", price: "40.00",name: "Retro")
radar = Clothe.create(apparel: "Pants", style: "Surfer", price: "35.00", name: "Radar")
vision = Clothe.create(apparel: "Necklace", style: "Gala", price: "20.00", name: "Vision")
gamma = Clothe.create( apparel: "Hoodie", style: "Skater", price: "40.00", name: "Gamma")
spectrum = Clothe.create(apparel: "Hat", style: "City_wear", price: "25.00", name: "Spectrum")
infinity = Clothe.create(apparel: "Bracelet", style: "Gala", price: "25.00", name: "Infinity")

