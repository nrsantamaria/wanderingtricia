# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

user = User.new
user.username = "admin"
user.email = "admin@email.com"
user.password = '123456'
user.admin = true
user.save!

user = User.new
user.username = "user"
user.email = "user@email.com"
user.password = '123456'
user.admin = false
user.save!

10.times do |index|
  User.create!(username: Faker::HarryPotter.character,
                  email: Faker::Internet.email,
                  password: Faker::Crypto.md5)
end

p "Created #{User.count} users"
