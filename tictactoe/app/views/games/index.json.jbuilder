json.array!(@games) do |game|
  json.extract! game, :id, :user1_id, :user2_id
  json.url game_url(game, format: :json)
end
