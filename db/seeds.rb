# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
  Pattern.create(
    brand: rand(0..6),
    number: Faker::Alphanumeric.alphanumeric(number: 4, min_alpha: 1, min_numeric: 3),
    front_pic: nil,
    back_pic: nil,
  )
end