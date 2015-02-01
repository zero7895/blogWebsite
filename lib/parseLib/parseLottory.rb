require "nokogiri"
require 'open-uri'
require 'json'

module ParseLottory

	def self.getLottory

		#target = "Lottory649"
		target = "superlotto638"
		parsePath = "http://www.taiwanlottery.com.tw/lotto/#{target}/history.aspx"
		# puts parsePath
		#f = File.open("input.html")
		doc = Nokogiri::HTML(open(parsePath)) do |config|
			
		end

		all_lottory_hash = Hash.new

		(0..20).each  do |i|
			
			lottory_id = doc.css("span#SuperLotto638Control_history1_dlQuery_DrawTerm_" + i.to_s);
			if !lottory_id.empty?

				lottory_hash = Hash.new

				lottory_hash["期別"] = doc.css("span#SuperLotto638Control_history1_dlQuery_DrawTerm_" + i.to_s).text
				lottory_hash["開獎日"] = doc.css("span#SuperLotto638Control_history1_dlQuery_Date_" + i.to_s).text
				
				normal_num = ""
				special_num = ""		
				(1..7).each do |j|
					normal_num += doc.css('span#SuperLotto638Control_history1_dlQuery_No' + j.to_s + '_' + i.to_s).text + " " if j <=6
					special_num = doc.css('span#SuperLotto638Control_history1_dlQuery_No' + j.to_s + '_' + i.to_s).text  if j == 7
				end
				lottory_hash["號碼"] = normal_num.strip!
				lottory_hash["特別號"] = special_num
				
				all_lottory_hash[ lottory_hash["期別"] ] = lottory_hash
				
			else
				break;
			end

		end

		return all_lottory_hash

	end

end
