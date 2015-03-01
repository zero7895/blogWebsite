class GameInfo < ActiveRecord::Base
	has_many :game_datum

	def getComputeGameMoney(tmpArray)
		resultArray = [0,0,0,0]

		#自摸
		if tmpArray[0] != 0 && tmpArray[1] != 0 && tmpArray[2] != 0 && tmpArray[3] != 0 
			(0..3).each do |i|
				if tmpArray[i] > 0
					resultArray[i] = base_pay * 3 + acc_pay*tmpArray[i]
				else
					resultArray[i] = base_pay * -1 + acc_pay*tmpArray[i]
				end
			end

		else
			(0..3).each do |i|
				if tmpArray[i] > 0
					resultArray[i] = base_pay * 1 + acc_pay*tmpArray[i]
				elsif tmpArray[i] == 0
					resultArray[i] == 0
				else
					resultArray[i] = base_pay * -1 + acc_pay*tmpArray[i]
				end
			end
		end

		return resultArray
	end

end
