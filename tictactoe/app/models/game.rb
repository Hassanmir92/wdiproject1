class Game < ActiveRecord::Base
  has_many :moves
  belongs_to :user1, class_name: 'User', foregin_key: 'user1_id'
  belongs_to :user2, class_name: 'User', foregin_key: 'user2_id'
end
