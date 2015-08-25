# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Bike.destroy_all

bikes = [
  {
    type: "roadster",
    description: "Kawasaki ZR7",
    price_per_day: 100,
  },
  {
    type: "sportive",
    description: "Honda CBR 600",
    price_per_day: 150,
  },
  {
    type: "chopper",
    description: "Harley-Davidson Roadster",
    price_per_day: 150,
  },
  {
    type: "Dual Sport",
    description: "Husqvarna Nuda",
    price_per_day: 120,
  },

]

bikes.each { |bike| Bike.create(bike) }
