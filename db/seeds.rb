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
    bike_category: "Roadster",
    description: "Triumph Street Triple R",
    price_per_day: 200,
    user_id: "1"
    city: "Paris",
    picture: 'http://alquilamoto.s3.amazonaws.com/development/bikes/pictures/000/000/022/large/triumph-streettriple.jpg?1440517831',
  },
  {
    bike_category: "sportive",
    description: "BMW S1000RR",
    price_per_day: 250,
    user_id: "2"
    city: "Lyon",
    picture: "http://alquilamoto.s3.amazonaws.com/development/bikes/pictures/000/000/024/large/bmw-s1000rr.jpg?1440595273",
  },
  {
    bike_category: "chopper",
    description: "Harley-Davidson Roadster",
    price_per_day: 150,
    user_id: "2"
    city: "Lille"
    picture: "http://alquilamoto.s3.amazonaws.com/development/bikes/pictures/000/000/026/large/mhorn19983ra-01.jpg?1440614699",

  },
  {
    bike_category: "Dual Sport",
    description: "Husqvarna Nuda",
    price_per_day: 120,
    user_id: "3"
    city: "Nantes"
    picture: "http://alquilamoto.s3.amazonaws.com/development/bikes/pictures/000/000/030/large/maxresdefault.jpg?1440619783",

  },

]

bikes.each { |bike| Bike.create(bike) }
