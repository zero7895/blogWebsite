class CreateGameData < ActiveRecord::Migration
  def change
    create_table :game_data do |t|
      t.integer :money1
      t.integer :money2
      t.integer :money3
      t.integer :money4

      t.timestamps
    end
  end
end
