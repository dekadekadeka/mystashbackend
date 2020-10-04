# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
  Fabric.create!(
    fabric_type: Faker::Construction.material,
    color: Faker::Color.color_name,
    size: Faker::Measurement.length,
    description: Faker::Company.bs,
    name: Faker::ProgrammingLanguage.name,
    user: User.find(1)
  )
end

10.times do
  Floss.create!(
    brand: Faker::Cannabis.strain,
    color: Faker::Color.color_name,
    amount: Faker::Measurement.length,
    user: User.find(1)
  )
end

10.times do
  Needle.create!(
    needle_type: Faker::ElectricalComponents.electromechanical,
    size: rand(0..20),
    user: User.find(1)
  )
end

10.times do
  Notion.create!(
    name: Faker::Cannabis.buzzword,
    brand: Faker::Cannabis.brand,
    size: Faker::Measurement.height,
    description: Faker::Hacker.say_something_smart,
    color: Faker::Color.color_name,
    user: User.find(1)
  )
end

10.times do
  Pattern.create(
    brand: rand(0..6),
    number: Faker::Alphanumeric.alphanumeric(number: 4, min_alpha: 1, min_numeric: 3)
  )
end

10.times do
  Yarn.create!(
    brand: Faker::Cannabis.brand,
    name: Faker::Hacker.adjective,
    color: Faker::Color.color_name,
    size: Faker::Measurement.length,
    lot: Faker::Alphanumeric.alphanumeric(number: 5),
    user: User.find(1)
  )
end
