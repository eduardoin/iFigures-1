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

batman = Figure.new(name: "Batman", brand: "DC", price: 150.50)
batman.user = user
batman.save!


url = "https://i5.walmartimages.com/asr/3de63140-d145-4e09-b9af-ebb4ed9c919d_1.b3a835900535726f56985330d2f6469e.jpeg"
picture = Picture.new(main_photo: true)
picture.remote_photo_url = url
picture.figure = batman
picture.save!

captain_america = Figure.new(name: "Captain America", brand: "marvel", price: 180.0)
captain_america.user = user
captain_america.save!


url = "https://marvtoys.com/wp-content/uploads/2017/08/1kjuhygtfrdeswdcfvgbhnjmknbvg.jpg"
picture = Picture.new(main_photo: true)
picture.remote_photo_url = url
picture.figure = captain_america
picture.save!


black_widow = Figure.new(name: "Black Widow", brand: "marvel", price: 200.75)
black_widow.user = user
black_widow.save!


url = "https://marvtoys.com/wp-content/uploads/2018/07/1282145429-1.jpg"
picture = Picture.new(main_photo: true)
picture.remote_photo_url = url
picture.figure = black_widow
picture.save!

spider_man = Figure.new(name: "Spiderman", brand: "marvel", price: 115.0)
spider_man.user = user
spider_man.save!


url = "https://marvtoys.com/wp-content/uploads/2018/11/Spider-Man-Homecoming-Collectible-Figure-Bobble-Head-5.5inch-3.jpg"
picture = Picture.new(main_photo: true)
picture.remote_photo_url = url
picture.figure = spider_man
picture.save!

darth_vader = Figure.new(name: "Darth Vader", brand: "starwars", price: 100.50)
darth_vader.user = user
darth_vader.save!


url = "https://images-na.ssl-images-amazon.com/images/I/815o84KL09L._SX466_.jpg"
picture = Picture.new(main_photo: true)
picture.remote_photo_url = url
picture.figure = darth_vader
picture.save!

ironman = Figure.new(name: "Ironman", brand: "marvel", price: 27.33)
ironman.user = user
ironman.save!


url = "https://marvtoys.com/wp-content/uploads/2018/12/1.jpg"
picture = Picture.new(main_photo: true)
picture.remote_photo_url = url
picture.figure = ironman
picture.save!

joker = Figure.new(name: "Joker", brand: "DC", price: 113.50)
joker.user = user
joker.save!


url = "https://images-na.ssl-images-amazon.com/images/I/71tZGNIjHAL._SY741_.jpg"
picture = Picture.new(main_photo: true)
picture.remote_photo_url = url
picture.figure = joker
picture.save!

cat_woman = Figure.new(name: "Cat Woman", brand: "DC", price: 198.50)
cat_woman.user = user
cat_woman.save!


url = "http://www.lilit.si/image/cache/data/Halloween%20kostumi/Zenski%20kostumi/catwoman-kostum-968x1150.jpg"
picture = Picture.new(main_photo: true)
picture.remote_photo_url = url
picture.figure = cat_woman
picture.save!

superman = Figure.new(name: "Superman", brand: "DC", price: 86.50)
superman.user = user
superman.save!


url = "https://images-na.ssl-images-amazon.com/images/I/41cqs93MmFL.jpg"
picture = Picture.new(main_photo: true)
picture.remote_photo_url = url
picture.figure = superman
picture.save!

wonderwoman = Figure.new(name: "Wonder Woman", brand: "DC", price: 150.50)
wonderwoman.user = user
wonderwoman.save!


url = "https://images.pexels.com/photos/1521537/pexels-photo-1521537.jpeg?cs=srgb&dl=pexels-1521537.jpg&fm=jpg"
picture = Picture.new(main_photo: true)
picture.remote_photo_url = url
picture.figure = wonderwoman
picture.save!
