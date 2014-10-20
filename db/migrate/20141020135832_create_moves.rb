class CreateMoves < ActiveRecord::Migration
  def change
    create_table :moves do |t|
      t.string :move
      t.integer :game_id
      t.integer :player_id
      t.integer :square_id

      t.timestamps
    end
  end
end
