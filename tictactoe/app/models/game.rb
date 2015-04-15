class Game < ActiveRecord::Base
  has_many :moves
  belongs_to :user1, class_name:'User', foreign_key:'user1_id'
  belongs_to :user2, class_name:'User', foreign_key:'user2_id'

  validates :user1_id, presence: true
  validates :user2_id, presence: true

  WIN_COMBO   = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]
  COMPUTER_ID = 1


  def whose_move
    if moves.last.try(:user_id) == user1_id
      user2
    else
      user1
    end
  end

  def user_is_computer
    user2_id == COMPUTER_ID
  end

  def random_move
     ((0..8).to_a - moves.map(&:value)).sample
   end

   def is_computer_move
     moves.last.user_id != COMPUTER_ID
   end

   def computer_move
     reload
     if is_computer_move && !game_finished
       moves.create!(user_id: COMPUTER_ID, value: random_move)
     end
   end


  def board
    board = [nil, nil, nil, nil, nil, nil, nil, nil, nil]
    moves.each { |move| board[move.value] = move.user_id }
    board
  end

  def game_won
    WIN_COMBO.detect do |condition|
      line = condition.map { |index| board[index] }
      line.any? && line.uniq.count == 1
    end
  end

  def game_draw
    moves.count == 9 && !game_won
  end

  def game_finished
    game_won || game_draw
  end
end
