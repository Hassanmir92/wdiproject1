# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = User.create!(email:"hassan@mir.com", password:"password")
u2 = User.create!(email:"test@me.com", password:"password")

g1 = Game.create! user1_id:u1.id, user2_id:u2.id

m1 = Move.create! user_id: u1.id, game_id: g1.id, value: 2, character: "x"
m2 = Move.create! user_id: u2.id, game_id: g1.id, value: 3, character: "o"
m3 = Move.create! user_id: u1.id, game_id: g1.id, value: 5, character: "x"
m4 = Move.create! user_id: u2.id, game_id: g1.id, value: 8, character: "o"
m5 = Move.create! user_id: u2.id, game_id: g1.id, value: 7, character: "o"


