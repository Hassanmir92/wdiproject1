class Game < ActiveRecord::Base
  has_many :moves
  belongs_to :user1, class_name:'User', foreign_key:'user1_id'
  belongs_to :user2, class_name:'User', foreign_key:'user2_id'

  validates :user1_id, presence: true
  validates :user2_id, presence: true

end
