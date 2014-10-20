class User < ActiveRecord::Base
  attr_accessible :bio, :draws, :email, :losses, :name, :password_digest, :profile_picture, :wins

    has_many :moves
    belongs_to :game
    has_many :games_as_player1, foreigh_key: :player1_id, class_name: 'Game'
    has_many :games_as_player2, foreigh_key: :player2_id, class_name: 'Game'
end
