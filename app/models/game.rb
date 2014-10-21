class Game < ActiveRecord::Base
  attr_accessible :draw, :loser, :player1_id, :player2_id, :winner

  belongs_to :player1, class_name: 'User'
  belongs_to :player2, class_name: 'User'
  has_many :moves

  # before_save :player1_id

  # def player1_id

  #   if @current_user
  #     self.player1_id = @current_user.id
  #   end 
    
  # end

end
