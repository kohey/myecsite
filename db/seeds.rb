# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 require 'faker'
10.times do |t|
  name = Faker::Book.title
  description = Faker::Lorem.sentence
  price = Faker::Number.number(4)
  created_at = Faker::Date.backward(14)
  updated_at = Faker::Date.between(2.days.ago, Date.today)

  Product.create(
  name: name,
  description: description,
  price: price,

  )
end

