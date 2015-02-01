require "#{Rails.root}/lib/parseLib/parseLottory.rb"

class ParseUtilitiesController < ApplicationController
  def getLottory
  	@lottory = ParseLottory.getLottory

  	respond_to do |format|
  		format.html 
  		format.json {render json: @lottory.to_json}
  	end
  end
end
