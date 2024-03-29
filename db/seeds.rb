# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# 20.times do |n|
#     User.create!(
#         last_name: Faker::Name.unique.last_name,
#         first_name: Faker::Name.unique.first_name,
#         email: Faker::Internet.unique.email,
#         password: "6510test",
#         password_confirmation: "6510test"
#     )
# end

40.times do |b|
    Board.create!(
        title: Faker::Games::Pokemon.location,
        body: Faker::Games::Pokemon.name,
        user: User.offset(rand(User.count)).first
    )

end