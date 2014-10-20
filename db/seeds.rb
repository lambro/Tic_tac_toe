# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Game.destroy_all
Move.destroy_all

u1 = User.create!(name: "Sarah", bio: "Some stuff for a bio", email: "sarah@email.com", password: "something", password_confirmation: "something" )
u2 = User.create!(name: "Ben", bio: "Some stuff for a bio", email: "ben@email.com", password: "something", password_confirmation: "something" )
u3 = User.create!(name: "Ian", bio: "Some stuff for a bio", email: "ian@email.com", password: "something", password_confirmation: "something" )
u4 = User.create!(name: "Nina", bio: "Some stuff for a bio", email: "nina@email.com", password: "something", password_confirmation: "something" )
u5 = User.create!(name: "Laura", bio: "Some stuff for a bio", email: "laura@email.com", password: "something", password_confirmation: "something" )

g1 = Game.create!(player1_id: u1.id, player2_id: u2.id, winner: u1.id, loser: u2.id, draw: false)
g2 = Game.create!(player1_id: u2.id, player2_id: u3.id, winner: u2.id, loser: u3.id, draw: false)
g3 = Game.create!(player1_id: u3.id, player2_id: u4.id, winner: u3.id, loser: u4.id, draw: false)
g4 = Game.create!(player1_id: u4.id, player2_id: u5.id, draw: true)

m1 = Move.create!(game_id: g1.id, player_id: u1.id, square_id: "1", move: "X")
m1 = Move.create!(game_id: g1.id, player_id: u2.id, square_id: "2", move: "O")
m1 = Move.create!(game_id: g1.id, player_id: u1.id, square_id: "3", move: "X")
m1 = Move.create!(game_id: g1.id, player_id: u2.id, square_id: "4", move: "O")










