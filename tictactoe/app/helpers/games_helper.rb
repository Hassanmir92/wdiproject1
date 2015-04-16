module GamesHelper
  def result_for_game(game)
    won = @game.game_won
    current_user_plays = @game.whose_move.id == current_user.id
    response = case 
    when won && current_user_plays then  image_tag('lose.png', width: '100', alt: "LOSER!") 
    when won && !current_user_plays then  image_tag("win.png", width: '100', alt: "WINNER!")
    when @game.game_draw then "DRAW"
    end
    content_tag :h1, response
  end

  def current_turn_for_game(game)
    response = case 
    when @game.whose_move.id == current_user.id && !@game.game_finished then "Your turn"
    end
    content_tag :p, response
  end

end
