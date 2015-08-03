class CreateMoves < ActiveRecord::Migration
  def change
    create_table :moves do |t|
      t.integer :user_id
      t.integer :game_id
      t.integer :value
      t.string :character

      t.timestamps null: false
    end
  end
end
