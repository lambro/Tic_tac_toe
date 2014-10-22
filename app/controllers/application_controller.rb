class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user
  helper_method :winning_user
  helper_method :losing_user
  helper_method :winning_user2
  helper_method :losing_user2

    private
    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
      end

    def winning_user
      if @game.winner = @game.winner
          User.where(id: @game.winner).first["name"]
      else
        "No winner yet"
      end
    end

    def losing_user
      if @game.winner = @game.winner
          User.where(id: @game.loser).first["name"]
      else
        "No loser yet"
      end
    end

    # def winning_user2
    #   @result = @games.each do |game|
    #     game.winner
    #   end
    #    User.where(id: @result).first["name"]
    # end

    # def losing_user2
    #   @result = @games.each do |game|
    #     game.loser
    #   end
    #   User.where(id: @result).first["name"]
    # end

end
