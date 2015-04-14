class Game < ActiveRecord::Base
  has_many :moves
  belongs_to :user1, class_name:'User', foreign_key:'user1_id'
  belongs_to :user2, class_name:'User', foreign_key:'user2_id'

  validates :user1_id, presence: true
  validates :user2_id, presence: true

  # a method giving moves for a game instance for a specific user 
  # WIN_COMBO = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]

  def whose_move?
    if moves.last.try(:user_id) == user1_id
      user2
    else
      user1
    end
  end
  
end
