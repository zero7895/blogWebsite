class GameInfosController < ApplicationController
  before_action :set_game_info, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @game_infos = GameInfo.all
    respond_with(@game_infos)
  end

  def show
    respond_with(@game_info)
  end

  def new
    @game_info = GameInfo.new
    respond_with(@game_info)
  end

  def edit
  end

  def create
    @game_info = GameInfo.new(game_info_params)
    @game_info.save
    respond_with(@game_info)
  end

  def update
    @game_info.update(game_info_params)
    respond_with(@game_info)
  end

  def destroy
    @game_info.destroy
    respond_with(@game_info)
  end

  private
    def set_game_info
      @game_info = GameInfo.find(params[:id])
    end

    def game_info_params
      params.require(:game_info).permit(:info, :name1, :name2, :name3, :name4, :base_pay, :acc_pay)
    end
end
