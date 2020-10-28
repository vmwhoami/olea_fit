# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(username: 'olea', fullname: 'Olga Pirvu')
User.create(username: 'vitalie', fullname: 'Vitalie Melnic')
User.create(username: 'adam', fullname: 'Adam Melnic')
User.create(username: 'sergyo', fullname: 'Sergiu Bogdan')
User.create(username: 'inna', fullname: 'Inna Bogdan')
User.create(username: 'nikoli', fullname: 'Nikoli Bogdan')

10.times do |u|
  User.create!(
    username: "user_#{u}",
    fullname: "User Family_#{u}"
  )
end

puts '-' * 100
puts '------------ Users created!!! -----------'
user = 0
9.times do |_o|
  user += 1
  Opinion.create!(
    author: User.find(user),
    text: "Because I'm just ... um .... I don't know. Why give an interview when you
  can leave a warning, you know?"
  )
end

9.times do |o|
  o += 1
  Opinion.create!(
    author: User.find(o),
    text: "Coronavirus is a joke!!!!
    You should care about your health not about coravirus
    "
  )
end
puts '-' * 100
puts '------------ Opinions Created!!! -----------'


8.times do |f|
  f += 1
  User.find(1).followings.create(followed_id:User.find(f).id)
end
a = 1
9.times do |f|
  f += 1
  a+=1
  User.find(a).followings.create(followed_id:User.find(2).id)
end


puts '-' * 100
puts '------------ Followings Created!!! -----------'