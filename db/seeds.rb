require "open-uri"

Rental.destroy_all
Guitar.destroy_all
User.destroy_all

User.create!(username: "Thomas", email: "tho@gmail.com", password: "123456", description: "rockeur fou")
User.create!(username: "Marion", email: "mar@gmail.com", password: "123456", description: "rockeuse de diamant")
User.create!(username: "Jessica", email: "jes@gmail.com", password: "123456", description: "USA ROCKS!")
User.create!(username: "Aurelien", email: "aur@gmail.com", password: "123456", description: "celui qui ne sait jouer de rien")

file = URI.open("https://d1aeri3ty3izns.cloudfront.net/media/38/382873/600/preview_3.jpg")
guitar1 = Guitar.new(name: "Awesome vintage Fender Stratocaster", description: "Nice 1964 Fender Stratocaster, perfect for any type of music", brand: "Fender", category: "Electric", location: "Paris", daily_price: 160.50, user: User.all.sample)
guitar1.photo.attach(io: file, filename: "guitar1.png", content_type: "image/png")
guitar1.save


file = URI.open("https://www.guitaremag.com/wp-content/uploads/sites/2/2020/05/Taylor-Beauty-guitar-on-sofa-1170x780.jpg")
guitar2 = Guitar.create!(name: "Taylor 114ce Walnut", description: "A very pure sound and a very fine material, a perfect body zise with an extraordinary griff.", brand: "Taylor", category: "Acoustic", location:"London", daily_price: 80.20, user: User.all.sample)
guitar2.photo.attach(io: file, filename: "guitar2.png", content_type: "image/png")
guitar2.save



Rental.create!(starting_date: DateTime.parse("09/01/2022 09:00"), end_date: DateTime.parse("12/01/2022 17:00"), status: "nil" , user: User.first, guitar: Guitar.all.sample )
Rental.create!(starting_date: DateTime.parse("01/03/2022 11:00"), end_date: DateTime.parse("04/03/2022 18:00"), status: "nil", user: User.second, guitar: Guitar.all.sample)
