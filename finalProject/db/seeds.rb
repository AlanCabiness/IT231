# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

rlproducts = Product.create([{game: 'Rocket League', itemName: 'Septem', imagePath: 'septem.png', price:2, tradeValue:1.25},
                               {game: 'Rocket League', itemName: 'Draco', imagePath: 'draco.png', price:10, tradeValue:7},
                               {game: 'Rocket League', itemName: 'Mantis', imagePath: 'mantis.png', price:15, tradeValue:10}])

csproducts = Product.create([{game: 'CS:GO', itemName: 'AWP | Phobos', imagePath: 'phobos.png', price:8, tradeValue:5},
                              {game: 'CS:GO', itemName: 'AK-47 | Fire Serpent', imagePath: 'serpent.png', price:180, tradeValue:140},
                              {game: 'CS:GO', itemName: 'M4A4 | Howl', imagePath: 'howl.png', price:650, tradeValue:550}])

