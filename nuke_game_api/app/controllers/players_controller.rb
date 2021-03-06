class PlayersController < ApplicationController

  def index
    @players = Player.all
    render json: @players, status: 200
  end

  def create
    @player = Player.create(player_params)
    render json: @player, status: 200
  end

  def update
    @player = Player.find(params[:id])
    @player.update(player_params)
    render json: @player, status: 200
  end

  private

  def player_params
    params.require(:player).permit(:x_coord, :y_coord, :player_number)
  end

end
