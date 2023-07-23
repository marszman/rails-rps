class ScissorsController < ApplicationController
  def play_scissors
    @player_message = "We played scissors!"
    opponent_move = ["rock", "paper", "scissors"].sample
    @opponent_message = "They played " + opponent_move + "!"
    if opponent_move == "rock"
      @result_message = "We lost!"
    elsif opponent_move == "paper"
      @result_message = "We won!"
    elsif opponent_move == "scissors"
      @result_message = "We tied!"
    end
    render({ :template => "game_templates/show_results" })
  end
end
