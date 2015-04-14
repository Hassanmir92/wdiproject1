class Move < ActiveRecord::Base
  POSSIBLE_CHARACTERS = %w(o x)

  belongs_to :user
  belongs_to :game

  validates :character, inclusion:{ in: POSSIBLE_CHARACTERS }
  validates :value, numericality: { only_integer: true, less_than: 9 }
  validates :value, uniqueness: true
  # validate :too_many_moves?

  # def too_many_moves?
  #   Game.moves.count < 10
  # end

end
