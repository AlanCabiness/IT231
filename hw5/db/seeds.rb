# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#customers = Customer.create([{name: 'Alan Cabiness', city:'Chicago', state:'Illinois', phone:'630-555-5555', email:'fakeemail123@gmail.com'}, {name: 'Norman Mysliwiec', city:'Chicago', state:'Illinois', phone:'312-555-5555', email:'fakeemail1234@gmail.com'}])

#products  = Product.create([{pName: '20XX', price:19.99, category:'RLDecals'}, {pName: 'UMP | Primal Saber', price:8.99, category:'CSSMG'}])

#sales = Sale.create([{customer: 'Alan Cabiness', product: '20XX', saleDate: Date.parse('2017-3-28'), salePrice:19.99}, {customer:'Norman Mysliwiec', product:'UMP | Primal Saber', saleDate:Date.parse('2017-5-3'), salePrice:8.99}])

#promotions = Promotion.create([{title: 'Mothers Day Sale', description: '10% off leading up to Mothers Day', imagePath: 'mothers.jpg', startDate:Date.parse('2017-05-01'), endDate:Date.parse('2017-05-14')},
#                               {title: 'Independence Day Sale', description: '10% off leading up to the 4th of July', imagePath: 'independance.png', startDate:Date.parse('2017-06-14'), endDate:Date.parse('2017-07-04')}])
=begin
require 'digest/md5'

user1 = User.new

user1.username = "AlanCabiness"
user1.password = Digest::MD5.hexdigest("AlanCabiness:localhost:12369874")
user1.save

user2 = User.new
user2.username = "admin"
user2.password = Digest::MD5.hexdigest("admin:localhost:password")
user2.save
=end

require 'csv'

csv_text = File.read('C:\Users\Alan\Desktop\sports.txt')
File.read('C:\Users\Alan\Desktop\sports.txt')
mycsv = CSV.parse(csv_text, :headers => true, :col_sep => "\t")

mycsv.each do |row|
  sports= Sport.create(name:row[0], location:row[1], stadium:row[2], league:row[3])
end