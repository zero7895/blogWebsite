class AddBaseAndPaymentToGameInfo < ActiveRecord::Migration
  def change
  	add_column :game_infos, :base_pay, :integer
  	add_column :game_infos, :acc_pay, :integer
  end
end
