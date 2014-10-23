class GamesController < ApplicationController
# GET /games
# GET /games.json
def index
  @games = Game.all

  respond_to do |format|
  format.html # index.html.erb
  format.json { render json: @games }
end
end

# GET /games/1
# GET /games/1.json
def show
  @game = Game.find(params[:id])

  @board = @game.build_board

  @result = @game.result
  puts "@result is #{@result}"

  if @result == 1
    render action: 'result' and return
  elsif @result == 2
    render action: 'result' and return
  elsif @result == 3
    render action: 'result' and return
  end

  if @game.player2_id == 1 && @game.moves.present?
    if @game.moves.last.player_id == @game.player1_id
      computer_square_id = @game.available_square_id

      redirect_to new_game_move_path(@game, square_id: computer_square_id, computer: true)
    end

  end

end

# GET /games/new
# GET /games/new.json
def new
  @game = Game.new

  respond_to do |format|
  format.html # new.html.erb
  format.json { render json: @game }
end
end

# GET /games/1/edit
def edit
  @game = Game.find(params[:id])
end

# POST /games
# POST /games.json
def create
  @game = Game.new(params[:game])

  @game.player1_id = current_user.id

  respond_to do |format|
    if @game.save
      format.html { redirect_to @game, notice: 'Game was successfully created.' }
      format.json { render json: @game, status: :created, location: @game }
    else
      format.html { render action: "new" }
      format.json { render json: @game.errors, status: :unprocessable_entity }
    end
  end
end

# PUT /games/1
# PUT /games/1.json
  def update
    @game = Game.find(params[:id])

    respond_to do |format|
      if @game.update_attributes(params[:game])
        format.html { redirect_to @game, notice: 'Game was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy

    respond_to do |format|
      format.html { redirect_to games_url }
      format.json { head :no_content }
    end
  end
end
