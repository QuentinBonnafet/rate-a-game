# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

puts "---------------------"
puts "Cleaning database"
User.destroy_all
Game.destroy_all

puts "---------------------"
puts "Creating Users"
User.create!(email: "user@gmail.com", password: "password", name: "Quentin")

puts "---------------------"
puts "Creating Games"

# 1--------------------------------------------------------------------------------------------------------
file = URI.open('https://static.wikia.nocookie.net/assassinscreed/images/6/63/Assassins_Creed_II_cover01.jpg/revision/latest/scale-to-width-down/1000?cb=20150227231131&path-prefix=fr')
anime = Game.create!(
  name: "Assassin's Creed 2",
  score: "90",
  studio: "Ubisoft",
  plateform: "PlayStation 3",
  genre: "Action-Aventure",
  year: "2009",
)
puts " - #{game.name} (#{game.count}/4)"
anime.photo.attach(io: file, filename: 'ac2img.jpg', content_type: 'image/png')
# 2--------------------------------------------------------------------------------------------------------
file = URI.open('https://howlongtobeat.com/games/38019_The_Legend_of_Zelda_Breath_of_the_Wild.jpg')
anime = Game.create!(
  name: "Zelda Breath of the Wild",
  score: "85",
  studio: "Nintendo",
  plateform: "Nintendo Wii U",
  genre: "Action-Aventure",
  year: "2017",
)
puts " - #{game.name} (#{game.count}/4)"
anime.photo.attach(io: file, filename: 'zbotwimg.jpg', content_type: 'image/png')
# 3--------------------------------------------------------------------------------------------------------
file = URI.open('https://m.media-amazon.com/images/I/51kWyydz-QL._AC_.jpg')
anime = Game.create!(
  name: "Super Mario Bros",
  score: "92.5",
  studio: "Nintendo",
  plateform: "Nintendo Entertainment System",
  genre: "Plateformes",
  year: "1985",
)
puts " - #{game.name} (#{game.count}/4)"
anime.photo.attach(io: file, filename: 'smbimg.jpg', content_type: 'image/png')
# 4--------------------------------------------------------------------------------------------------------
file = URI.open('https://www.mobygames.com/images/covers/l/9494-halo-combat-evolved-xbox-front-cover.jpg')
anime = Game.create!(
  name: "Halo Combat Evolved",
  score: "87",
  studio: "Microsoft Game Studios",
  plateform: "Xbox",
  genre: "Jeu de tir à la première personne",
  year: "2001",
)
puts " - #{game.name} (#{game.count}/4)"
anime.photo.attach(io: file, filename: 'hceimg.jpg', content_type: 'image/png')

puts "---------------------"
puts "Finished"
puts "---------------------"
