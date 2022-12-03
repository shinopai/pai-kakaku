# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

# 199.times do
# User.create!(
#   name: Faker::Internet.unique.username,
#   email: Faker::Internet.unique.email,
#   password: 'password'
# )
# end

# 150.times do
# Maker.create!(
#   name: Faker::ProgrammingLanguage.unique.name
# )
# end

# 3000.times do
# Item.create!(
#   name: Faker::FunnyName.two_word_name,
#   description: Faker::Quote.famous_last_words,
#   release_date: Faker::Date.between(from: '2010-01-01', to: '2022-01-01'),
#   category_id: rand(1..Category.count),
#   maker_id: rand(1..Maker.count)
# )
# end

# 300.times do
# Shop.create!(
#   name: Faker::FunnyName.two_word_name,
#   address: Faker::Address.full_address,
#   tel: Faker::PhoneNumber.cell_phone,
#   comment: Faker::Quote.famous_last_words,
#   postage: rand(0..1),
#   indication: rand(0..1)
# )
# end

5000.times do
Sale.create!(
  price: Faker::Number.between(from: 300, to: 9999999),
  shop_id: rand(1..Shop.count),
  item_id: rand(1..Item.count)
)
end
