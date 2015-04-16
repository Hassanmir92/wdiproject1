class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :games_1, class_name:'Game', foreign_key:'user1_id'
  has_many :games_2, class_name:'Game', foreign_key:'user2_id'
  has_many :moves, through: :games

  mount_uploader :user_image, UserImageUploader       


  def games 
    games_1 + games_2
  end

  def self.all_except(user)
      where.not(id: user)
    end

end
