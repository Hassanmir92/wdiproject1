class Move < ActiveRecord::Base

  belongs_to :user
  belongs_to :game

  validates :value, numericality: { only_integer: true, less_than: 9 }

end
