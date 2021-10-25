class CreateJoinTableGamesGenres < ActiveRecord::Migration[6.1]
  def change
    create_join_table :games, :genres do |t|
      t.index :game_id
      t.index :genre_id
    end
  end
end
