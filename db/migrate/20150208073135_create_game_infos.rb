class CreateGameInfos < ActiveRecord::Migration
  def change
    create_table :game_infos do |t|
      t.string :info
      t.string :name1
      t.string :name2
      t.string :name3
      t.string :name4

      t.timestamps
    end
  end
end
