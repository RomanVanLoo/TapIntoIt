# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user123 = User.create!(
  email: "tester@test.com",
  password: "test123",
  password_confirmation: "test123",
  name: "Dirk",
  location: "Brussels",
  description: "Waddup, I love beer!",
  remote_photo_url: 'https://res.cloudinary.com/discwhk4f/image/upload/v1551781659/wx0p5qp2g5obwlw8evau.jpg'

breweries = Brewery.create([{ name: 'BrewDog', address: "20, Putterie, 1000 Bruxelles", description: "No-nonsense chain bar specialising in the Scottish brewery's craft beers, with regular guest brews.
", email: "brusselsbar@brewdog.com", phone-number: "867-5309" }, { name: 'Brussels Beer Project', address: "20, Putterie, 1000 Bruxelles", description: "No-nonsense chain bar specialising in the Scottish brewery's craft beers, with regular guest brews.
", email: "brusselsbar@bbp.com", phone-number: "867-5309"}, { name: "Roman's Bar", address: "20, Putterie, 1000 Bruxelles", description: "No-nonsense chain bar specialising in the Scottish brewery's craft beers, with regular guest brews.
", email: "brusselsbar@brewdog.com", phone-number: "867-5309" }])

url_stock_photo = [
"https://res.cloudinary.com/discwhk4f/image/upload/v1552315324/426624_1200x1200.jpg",
"https://res.cloudinary.com/discwhk4f/image/upload/v1552315605/OSH-Low-Alcohol-Lifestyle-1.jpg",
"https://res.cloudinary.com/discwhk4f/image/upload/v1552315497/aHR0cDovL3d3dy5saXZlc2NpZW5jZS5jb20vaW1hZ2VzL2kvMDAwLzA3OC81MzQvb3JpZ2luYWwvYXNzb3J0ZWQtYmVlci1mbGlnaHQuanBlZw.jpg"
]

url_user_beer_photo [
"https://res.cloudinary.com/discwhk4f/image/upload/v1552315359/Cerverja_Brahma__28tamanhos_29.jpg",
"https://res.cloudinary.com/discwhk4f/image/upload/v1552315408/Mexican-beer.jpg",
"https://res.cloudinary.com/discwhk4f/image/upload/v1552315965/19-beer-and-microbrewery-tour.jpg",
"https://res.cloudinary.com/discwhk4f/image/upload/v1552315881/D0qvEOyW0AAckw5.jpg"
]

10.times do |i|
  beer = Beer.new
  beer.name = "Maes"
  beer.type = "pilsner"
  beer.alcohol_percentage = '5.2%'
  beer.photo = url_stock_photo.sample
  beer.description = 'shit beer'
  beer.save
  batch = Batch.new
  batch.bottled_date = "22/10/2018"
  batch.save
  review_brewery = Review_brewery.new
  review_brewery.comment = "atmosphere is cool"
  review_brewery.rating = 4
  review_brewery.posted = true
  review_brewery.save
  comment_brewery = Comment_brewery.new
  comment_brewery.content = "Hey cool- I was there last weekend!"
  comment_brewery.save
  review_beer = Review_beer.new
  review_beer.comment = "only drinking this beer to make room in my fridge..."
  review_beer.posted = true
  review_beer.photo =
  review_beer.save
  comment_beer = Comment_beer.new
  comment_beer.content = "Yeah I'm not a fan of this beer either."
  comment_beer.save
end

