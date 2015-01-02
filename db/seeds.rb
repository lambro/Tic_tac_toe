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

u1 = User.create!(name: "Computer", bio: "Salvia Austin cold-pressed small batch Helvetica post-ironic. Farm-to-table umami selvage slow-carb distillery plaid. Shoreditch viral semiotics chambray normcore, tattooed Cosby sweater Brooklyn. Thundercats sustainable try-hard retro cardigan Tonx. Fanny pack try-hard flannel, iPhone craft beer tilde Godard Williamsburg selfies banh mi crucifix High Life pour-over taxidermy literally. 3 wolf moon Shoreditch High Life direct trade slow-carb, bespoke Helvetica. Bicycle rights cliche hella, sartorial cardigan Helvetica pug chambray ugh organic flexitarian salvia dreamcatcher before they sold out mustache.", email: "computer@email.com", password: "something", password_confirmation: "something",
  profile_picture: File.open(File.join(Rails.root, '/app/assets/images/trillsocks.jpg')))
u2 = User.create!(name: "Ben", bio: "Salvia Austin cold-pressed small batch Helvetica post-ironic. Farm-to-table umami selvage slow-carb distillery plaid. Shoreditch viral semiotics chambray normcore, tattooed Cosby sweater Brooklyn. Thundercats sustainable try-hard retro cardigan Tonx. Fanny pack try-hard flannel, iPhone craft beer tilde Godard Williamsburg selfies banh mi crucifix High Life pour-over taxidermy literally. 3 wolf moon Shoreditch High Life direct trade slow-carb, bespoke Helvetica. Bicycle rights cliche hella, sartorial cardigan Helvetica pug chambray ugh organic flexitarian salvia dreamcatcher before they sold out mustache.", email: "ben@email.com", password: "something", password_confirmation: "something",
  profile_picture: File.open(File.join(Rails.root, 'app/assets/images/trilllife.jpg')))
u3 = User.create!(name: "Ian", bio: "Salvia Austin cold-pressed small batch Helvetica post-ironic. Farm-to-table umami selvage slow-carb distillery plaid. Shoreditch viral semiotics chambray normcore, tattooed Cosby sweater Brooklyn. Thundercats sustainable try-hard retro cardigan Tonx. Fanny pack try-hard flannel, iPhone craft beer tilde Godard Williamsburg selfies banh mi crucifix High Life pour-over taxidermy literally. 3 wolf moon Shoreditch High Life direct trade slow-carb, bespoke Helvetica. Bicycle rights cliche hella, sartorial cardigan Helvetica pug chambray ugh organic flexitarian salvia dreamcatcher before they sold out mustache.", email: "ian@email.com", password: "something", password_confirmation: "something",
  profile_picture: File.open(File.join(Rails.root, 'app/assets/images/trilleyes.png')))
u4 = User.create!(name: "Nina", bio: "Salvia Austin cold-pressed small batch Helvetica post-ironic. Farm-to-table umami selvage slow-carb distillery plaid. Shoreditch viral semiotics chambray normcore, tattooed Cosby sweater Brooklyn. Thundercats sustainable try-hard retro cardigan Tonx. Fanny pack try-hard flannel, iPhone craft beer tilde Godard Williamsburg selfies banh mi crucifix High Life pour-over taxidermy literally. 3 wolf moon Shoreditch High Life direct trade slow-carb, bespoke Helvetica. Bicycle rights cliche hella, sartorial cardigan Helvetica pug chambray ugh organic flexitarian salvia dreamcatcher before they sold out mustache.", email: "nina@email.com", password: "something", password_confirmation: "something",
  profile_picture: File.open(File.join(Rails.root, 'app/assets/images/trillteeth.jpg')))
u5 = User.create!(name: "Laura", bio: "Salvia Austin cold-pressed small batch Helvetica post-ironic. Farm-to-table umami selvage slow-carb distillery plaid. Shoreditch viral semiotics chambray normcore, tattooed Cosby sweater Brooklyn. Thundercats sustainable try-hard retro cardigan Tonx. Fanny pack try-hard flannel, iPhone craft beer tilde Godard Williamsburg selfies banh mi crucifix High Life pour-over taxidermy literally. 3 wolf moon Shoreditch High Life direct trade slow-carb, bespoke Helvetica. Bicycle rights cliche hella, sartorial cardigan Helvetica pug chambray ugh organic flexitarian salvia dreamcatcher before they sold out mustache.", email: "laura@email.com", password: "something", password_confirmation: "something",
  profile_picture: File.open(File.join(Rails.root, 'app/assets/images/trill1.jpg')))
u6 = User.create!(name: "Olly", bio: "Salvia Austin cold-pressed small batch Helvetica post-ironic. Farm-to-table umami selvage slow-carb distillery plaid. Shoreditch viral semiotics chambray normcore, tattooed Cosby sweater Brooklyn. Thundercats sustainable try-hard retro cardigan Tonx. Fanny pack try-hard flannel, iPhone craft beer tilde Godard Williamsburg selfies banh mi crucifix High Life pour-over taxidermy literally. 3 wolf moon Shoreditch High Life direct trade slow-carb, bespoke Helvetica. Bicycle rights cliche hella, sartorial cardigan Helvetica pug chambray ugh organic flexitarian salvia dreamcatcher before they sold out mustache.", email: "Olly@email.com", password: "something", password_confirmation: "something",
  profile_picture: File.open(File.join(Rails.root, 'app/assets/images/trillgirl.jpg')))
u7 = User.create!(name: "Computer", bio: "Salvia Austin cold-pressed small batch Helvetica post-ironic. Farm-to-table umami selvage slow-carb distillery plaid. Shoreditch viral semiotics chambray normcore, tattooed Cosby sweater Brooklyn. Thundercats sustainable try-hard retro cardigan Tonx. Fanny pack try-hard flannel, iPhone craft beer tilde Godard Williamsburg selfies banh mi crucifix High Life pour-over taxidermy literally. 3 wolf moon Shoreditch High Life direct trade slow-carb, bespoke Helvetica. Bicycle rights cliche hella, sartorial cardigan Helvetica pug chambray ugh organic flexitarian salvia dreamcatcher before they sold out mustache.", email: "computer1@email.com", password: "something", password_confirmation: "something",
  profile_picture: File.open(File.join(Rails.root, 'app/assets/images/trillsocks.jpg')))
u8 = User.create!(name: "Computer", bio: "Salvia Austin cold-pressed small batch Helvetica post-ironic. Farm-to-table umami selvage slow-carb distillery plaid. Shoreditch viral semiotics chambray normcore, tattooed Cosby sweater Brooklyn. Thundercats sustainable try-hard retro cardigan Tonx. Fanny pack try-hard flannel, iPhone craft beer tilde Godard Williamsburg selfies banh mi crucifix High Life pour-over taxidermy literally. 3 wolf moon Shoreditch High Life direct trade slow-carb, bespoke Helvetica. Bicycle rights cliche hella, sartorial cardigan Helvetica pug chambray ugh organic flexitarian salvia dreamcatcher before they sold out mustache.", email: "computer2@email.com", password: "something", password_confirmation: "something",
  profile_picture: File.open(File.join(Rails.root, 'app/assets/images/trillsocks.jpg')))
u9 = User.create!(name: "Computer", bio: "Salvia Austin cold-pressed small batch Helvetica post-ironic. Farm-to-table umami selvage slow-carb distillery plaid. Shoreditch viral semiotics chambray normcore, tattooed Cosby sweater Brooklyn. Thundercats sustainable try-hard retro cardigan Tonx. Fanny pack try-hard flannel, iPhone craft beer tilde Godard Williamsburg selfies banh mi crucifix High Life pour-over taxidermy literally. 3 wolf moon Shoreditch High Life direct trade slow-carb, bespoke Helvetica. Bicycle rights cliche hella, sartorial cardigan Helvetica pug chambray ugh organic flexitarian salvia dreamcatcher before they sold out mustache.", email: "computer3@email.com", password: "something", password_confirmation: "something",
  profile_picture: File.open(File.join(Rails.root, 'app/assets/images/trillsocks.jpg')))
u10 = User.create!(name: "Computer", bio: "Salvia Austin cold-pressed small batch Helvetica post-ironic. Farm-to-table umami selvage slow-carb distillery plaid. Shoreditch viral semiotics chambray normcore, tattooed Cosby sweater Brooklyn. Thundercats sustainable try-hard retro cardigan Tonx. Fanny pack try-hard flannel, iPhone craft beer tilde Godard Williamsburg selfies banh mi crucifix High Life pour-over taxidermy literally. 3 wolf moon Shoreditch High Life direct trade slow-carb, bespoke Helvetica. Bicycle rights cliche hella, sartorial cardigan Helvetica pug chambray ugh organic flexitarian salvia dreamcatcher before they sold out mustache.", email: "computer4@email.com", password: "something", password_confirmation: "something",
  profile_picture: File.open(File.join(Rails.root, 'app/assets/images/trillsocks.jpg')))


g1 = Game.create!(player1_id: u1.id, player2_id: u2.id, winner: u1.id, loser: u2.id, draw: false)
g2 = Game.create!(player1_id: u2.id, player2_id: u3.id, winner: u2.id, loser: u3.id, draw: false)
g3 = Game.create!(player1_id: u3.id, player2_id: u4.id, winner: u3.id, loser: u4.id, draw: false)
g4 = Game.create!(player1_id: u4.id, player2_id: u5.id, draw: true)

m1 = Move.create!(game_id: g1.id, player_id: u1.id, square_id: "1", move: "X")
m1 = Move.create!(game_id: g1.id, player_id: u2.id, square_id: "2", move: "O")
m1 = Move.create!(game_id: g1.id, player_id: u1.id, square_id: "3", move: "X")
m1 = Move.create!(game_id: g1.id, player_id: u2.id, square_id: "4", move: "O")










