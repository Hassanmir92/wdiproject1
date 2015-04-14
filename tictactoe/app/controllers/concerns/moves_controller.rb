class MovesController < ApplicationController

  def create
    @game = Game.find(params[:game_id])
    @game.moves.create!(user_id: current_user.id, value: params[:value])
    redirect_to @game
  end

end