# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Sale.destroy_all
origins = []
5.times do 
    origins.push Faker::Coffee.origin
end

names = []
10.times do 
    names.push Faker::Coffee.blend_name
end

200.times do
    Sale.create(
        name: names.sample,
        date: Faker::Date.between('2020-01-01','2021-03-31'),
        price: rand(1990..5490),
        origin: origins.sample,
        amount: rand(10..500)
    )
end