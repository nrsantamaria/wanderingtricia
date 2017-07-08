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
user.id = 1
user.save!

user = User.new
user.username = "user"
user.email = "user@email.com"
user.password = '123456'
user.admin = false
user.id = 2
user.save!

Image.destroy_all

image1 = Image.new
image1.name = Faker::Book.title
image1.description = Faker::Hipster.sentence(10, false, 4)
image1.portfolio = 'Landscape'
image1.price = Faker::Number.between(20, 100)
image1.avatar = File.new('app/assets/images/landscape/ColumbiaRiver.jpg')
image1.user_id = 1
image1.save!

image2 = Image.new
image2.name = Faker::Book.title
image2.description = Faker::Hipster.sentence(10, false, 4)
image2.portfolio = 'Landscape'
image2.price = Faker::Number.between(20, 200)
image2.avatar = File.new('app/assets/images/landscape/ColumbiaRiverGorge.jpg')
image2.user_id = 1
image2.save!

image3 = Image.new
image3.name = Faker::Book.title
image3.description = Faker::Hipster.sentence(10, false, 4)
image3.portfolio = 'Landscape'
image3.price = Faker::Number.between(20, 100)
image3.avatar = File.new('app/assets/images/landscape/TogianIslandStars.jpg')
image3.user_id = 1
image3.save!

image4 = Image.new
image4.name = Faker::Book.title
image4.description = Faker::Hipster.sentence(10, false, 4)
image4.portfolio = 'Interior'
image4.price = Faker::Number.between(20, 100)
image4.avatar = File.new('app/assets/images/interiors/AcademyofScienceSF.jpg')
image4.user_id = 1
image4.save!

image5 = Image.new
image5.name = Faker::Book.title
image5.description = Faker::Hipster.sentence(10, false, 4)
image5.portfolio = 'Interior'
image5.price = Faker::Number.between(20, 100)
image5.avatar = File.new('app/assets/images/interiors/Kolmanskop.jpg')
image5.user_id = 1
image5.save!

image6 = Image.new
image6.name = Faker::Book.title
image6.description = Faker::Hipster.sentence(10, false, 4)
image6.portfolio = 'Interior'
image6.price = Faker::Number.between(20, 100)
image6.avatar = File.new('app/assets/images/interiors/TicketLobbyLAUnionStation.jpg')
image6.user_id = 1
image6.save!

image7 = Image.new
image7.name = Faker::Book.title
image7.description = Faker::Hipster.sentence(10, false, 4)
image7.portfolio = 'Hospitality'
image7.price = Faker::Number.between(20, 100)
image7.avatar = File.new('app/assets/images/hospitality/George.jpg')
image7.user_id = 1
image7.save!

image8 = Image.new
image8.name = Faker::Book.title
image8.description = Faker::Hipster.sentence(10, false, 4)
image8.portfolio = 'Hospitality'
image8.price = Faker::Number.between(20, 100)
image8.avatar = File.new('app/assets/images/hospitality/PetronasTower2.jpg')
image8.user_id = 1
image8.save!

image9 = Image.new
image9.name = Faker::Book.title
image9.description = Faker::Hipster.sentence(10, false, 4)
image9.portfolio = 'Hospitality'
image9.price = Faker::Number.between(20, 100)
image9.avatar = File.new('app/assets/images/hospitality/Schnitz.jpg')
image9.user_id = 1
image9.save!

Review.destroy_all

40.times do |index|
  Review.create!(author: Faker::HarryPotter.character,
                content_body: Faker::Hipster.sentence(10, false, 4),
                image_id: Faker::Number.between(1, 9))
end

p "Created #{Review.count} reviews"
