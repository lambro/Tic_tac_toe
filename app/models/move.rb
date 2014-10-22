class Move < ActiveRecord::Base
  attr_accessible :move, :game_id, :player_id, :square_id
  
  belongs_to :game
  belongs_to :user

  def build_board

    board = [nil, nil, nil, nil, nil, nil, nil, nil, nil]

      self.moves.each do |move| 
        board[move.square_id] = move.move
      end  

    board

  end



end

