class Move < ActiveRecord::Base
  attr_accessible :move, :game_id, :player_id, :square_id
  
  belongs_to :game
  belongs_to :user
end
