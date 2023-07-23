class RockController < ApplicationController
  def play_rock
    @player_message = "We played rock!"
    opponent_move = ["rock", "paper", "scissors"].sample
    @opponent_message = "They played " + opponent_move + "!"
    if opponent_move == "rock"
      @result_message = "We tied!"
    elsif opponent_move == "paper"
      @result_message = "We lost!"
    elsif opponent_move == "scissors"
      @result_message = "We won!"
    end
    render({ :template => "game_templates/show_results" })
  end
end
