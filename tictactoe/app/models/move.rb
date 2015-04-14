class Move < ActiveRecord::Base

  belongs_to :user
  belongs_to :game

  validates :value, numericality: { only_integer: true, less_than: 9 }
  validate :is_your_move?, on: :create

  def is_your_move?
    errors.add(:user_id, "Wait your turn") unless game.whose_move?.id == user_id
    game.reload
   end

end
