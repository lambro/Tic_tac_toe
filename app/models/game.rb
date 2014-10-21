class Game < ActiveRecord::Base
  attr_accessible :draw, :loser, :player1_id, :player2_id, :winner

  belongs_to :player1, class_name: 'User'
  belongs_to :player2, class_name: 'User'
  has_many :moves

def build_board

  board = [nil, nil, nil, nil, nil, nil, nil, nil, nil]
  
  binding.pry
  puts "debug"
end

end
