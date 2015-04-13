class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :user1_id
      t.integer :user2_id

      t.timestamps null: false
    end
  end
end
