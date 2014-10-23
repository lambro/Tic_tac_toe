class Game < ActiveRecord::Base
  attr_accessible :draw, :loser, :player1_id, :player2_id, :winner

  belongs_to :player1, class_name: 'User'
  belongs_to :player2, class_name: 'User'
  belongs_to :winner_id, class_name: 'User'

  has_many :moves


  def build_board

    board = [nil, nil, nil, nil, nil, nil, nil, nil, nil]

      self.moves.each do |move| 
        board[move.square_id] = move.move
      end  
      board
  end

  def result

    @winning_combo = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]].to_set

    @playsx = self.moves.where(move: "X").pluck(:square_id).to_set

    @playso = self.moves.where(move: "O").pluck(:square_id).to_set

    if @winning_combo.any? { |subset| @playsx.superset? subset.to_set} == true
      self.winner = player1_id
      self.loser = player2_id
      self.draw = false
      
      @result = 1

    elsif @winning_combo.any? { |subset| @playso.superset? subset.to_set} == true
      @result = 2

      self.winner = player2_id
      self.loser = player1_id
      self.draw = false

    elsif (@playsx.count + @playso.count) >= 9
      @result = 0

      self.draw = true

    else
      # self.build_board
    end
    self.save
    @result
  end

end
