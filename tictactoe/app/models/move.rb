class Move < ActiveRecord::Base

  belongs_to :user
  belongs_to :game

  validates :value, numericality: { only_integer: true, less_than: 9 }

  after_save :computer_game


  def computer_game
    if game.user_is_computer
      game.computer_move
    end
  end


end
