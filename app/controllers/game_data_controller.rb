class GameDataController < ApplicationController
  before_action :set_game_datum, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @game_data = GameDatum.all
    respond_with(@game_data)
  end

  def show
    respond_with(@game_datum)
  end

  def new
    @game_datum = GameDatum.new
    respond_with(@game_datum)
  end

  def edit
  end

  def create
    @game_datum = GameDatum.new(game_datum_params)
    if @game_datum.money1+@game_datum.money2+@game_datum.money3+@game_datum.money4 == 0
      @game_datum.save
      redirect_to game_info_path(@game_datum.game_info_id)
    else
      flash[:error] = "Not balance"
      render :new
    end
  end

  def update
    @game_datum.update(game_datum_params)
    respond_with(@game_datum)
  end

  def destroy
    @game_datum.destroy
    respond_with(@game_datum)
  end

  private
    def set_game_datum
      @game_datum = GameDatum.find(params[:id])
    end

    def game_datum_params
      params.require(:game_datum).permit(:money1, :money2, :money3, :money4, :game_info_id)
    end
end
