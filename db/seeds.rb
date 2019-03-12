# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
Figure.destroy_all
User.destroy_all
Picture.destroy_all
user = User.new(email: "sveta.berrios@gmail.com", password: "kartoshka")
user.save!

url = "https://i5.walmartimages.com/asr/3de63140-d145-4e09-b9af-ebb4ed9c919d_1.b3a835900535726f56985330d2f6469e.jpeg"
picture = Picture.new(main_photo: true, remote_photo_url: url)
Figure.create!(
  name: "Batman",
  brand: "DC",
  price: 150.50,
  address: 'USA',
  pictures: [picture],
  user: user
)


url = "https://marvtoys.com/wp-content/uploads/2017/08/1kjuhygtfrdeswdcfvgbhnjmknbvg.jpg"
picture = Picture.new(main_photo: true, remote_photo_url: url)
Figure.create!(
  name: "Captain America",
  brand: "DC",
  price: 180.0,
  address: 'USA',
  pictures: [picture],
  user: user
)


url = "https://marvtoys.com/wp-content/uploads/2018/07/1282145429-1.jpg"
picture = Picture.new(main_photo: true, remote_photo_url: url)
Figure.create!(
  name: "Black Widow",
  brand: "DC",
  price: 200.75,
  address: 'USA',
  pictures: [picture],
  user: user
)


url = "https://marvtoys.com/wp-content/uploads/2018/11/Spider-Man-Homecoming-Collectible-Figure-Bobble-Head-5.5inch-3.jpg"
picture = Picture.new(main_photo: true, remote_photo_url: url)
Figure.create!(
  name: "Spiderman",
  brand: "Marvel",
  price: 115.0,
  address: 'USA',
  pictures: [picture],
  user: user
)


url = "https://images-na.ssl-images-amazon.com/images/I/815o84KL09L._SX466_.jpg"
picture = Picture.new(main_photo: true, remote_photo_url: url)
Figure.create!(
  name: "Darth Vader",
  brand: "StarWars",
  price: 100.50,
  address: 'USA',
  pictures: [picture],
  user: user
)


url = "https://marvtoys.com/wp-content/uploads/2018/12/1.jpg"
picture = Picture.new(main_photo: true, remote_photo_url: url)
Figure.create!(
  name: "Iromman",
  brand: "Marvel",
  price: 127.33,
  address: 'USA',
  pictures: [picture],
  user: user
)


url = "https://images-na.ssl-images-amazon.com/images/I/71tZGNIjHAL._SY741_.jpg"
picture = Picture.new(main_photo: true, remote_photo_url: url)
Figure.create!(
  name: "Joker",
  brand: "DC",
  price: 113.53,
  address: 'USA',
  pictures: [picture],
  user: user
)


url = "http://www.lilit.si/image/cache/data/Halloween%20kostumi/Zenski%20kostumi/catwoman-kostum-968x1150.jpg"
picture = Picture.new(main_photo: true, remote_photo_url: url)
Figure.create!(
  name: "Cat Woman",
  brand: "DC",
  price: 198.50,
  address: 'USA',
  pictures: [picture],
  user: user
)


url = "https://images-na.ssl-images-amazon.com/images/I/41cqs93MmFL.jpg"
picture = Picture.new(main_photo: true, remote_photo_url: url)
Figure.create!(
  name: "Superman",
  brand: "DC",
  price: 86.50,
  address: 'USA',
  pictures: [picture],
  user: user
)




url = "https://images.pexels.com/photos/1521537/pexels-photo-1521537.jpeg?cs=srgb&dl=pexels-1521537.jpg&fm=jpg"
picture = Picture.new(main_photo: true, remote_photo_url: url)
Figure.create!(
  name: "WonderWoman",
  brand: "DC",
  price: 150.50,
  address: 'USA',
  pictures: [picture],
  user: user
)
