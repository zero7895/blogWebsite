class AddGameInfoIdToGameData < ActiveRecord::Migration
  def change
  	add_column :game_data, :game_info_id, :integer
  	add_index :game_data, :game_info_id
  end
end
