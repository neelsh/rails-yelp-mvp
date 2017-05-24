# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

# 10.times { Restaurant.create(name: Faker::LeagueOfLegends.champion, address: Faker::LeagueOfLegends.location, category: Faker::LeagueOfLegends.masteries, description: Faker::LeagueOfLegends.quote, stars: 2) }
restaurants_attributes = [
  {
    name:         "La Masala",
    address:      "Rayners Lane",
    description:  "Sri Lankan/South Indian restaurant.",
    category:     "indian",
    stars:        3
  },
  {
    name:         "Pizza East",
    address:      "Old Street",
    description:  "Quaint Italian restaurant serving pizza and paste.",
    category:     "italian",
    stars:        2
  },
  {
    name:         "Peri Peri Chicken Cottage",
    address:      "Harefield",
    description:  "Freshly cooked chicken covered in famous peri-peri sauce",
    category:     "american",
    stars:        1
  }
]
Restaurant.create!(restaurants_attributes)
