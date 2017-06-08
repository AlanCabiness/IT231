# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'
require 'digest/md5'


csv_text = File.read('C:\Users\Alan\Desktop\FinaleRatings.txt')
File.read('C:\Users\Alan\Desktop\FinaleRatings.txt')
mycsv = CSV.parse(csv_text, :headers => true, :col_sep => "\t")

mycsv.each do |row|
  ratings= Rating.create(series:row[0], viewership:row[1], rating:row[2], share:row[3], date:row[4], network:row[5])
end



csv_text2 = File.read('C:\Users\Alan\Desktop\users.txt')
File.read('C:\Users\Alan\Desktop\users.txt')
mycsv2 = CSV.parse(csv_text2, :headers => true, :col_sep => "\t")

mycsv2.each do |row|
  usertemp = User.new
  usertemp.username = row[0]
  usertemp.password = Digest::MD5.hexdigest("#{row[0]}:localhost:#{row[1]}")
  usertemp.email = row[2]
  usertemp.save
  #users= User.create(username:row[0], password:row[1], email:row[2])
end
