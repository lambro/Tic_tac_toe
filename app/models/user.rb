class User < ActiveRecord::Base
  attr_accessible :bio, :draws, :email, :losses, :name, :password_digest, :profile_picture, :wins, :password_confirmation, :password

    has_secure_password
    has_many :moves
    belongs_to :game
    has_many :games_as_player1, foreign_key: :player1_id, class_name: 'Game'
    has_many :games_as_player2, foreign_key: :player2_id, class_name: 'Game'

    validates :password, presence: true, on: :create
    validates :email, uniqueness: { case_sensitive: false}

end