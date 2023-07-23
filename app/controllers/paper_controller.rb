class PaperController < ApplicationController
  def play_paper
    @player_message = "We played paper!"
    opponent_move = ["rock", "paper", "scissors"].sample
    @opponent_message = "They played " + opponent_move + "!"
    if opponent_move == "rock"
      @result_message = "We won!"
    elsif opponent_move == "paper"
      @result_message = "We tied!"
    elsif opponent_move == "scissors"
      @result_message = "We lost!"
    end
    render({ :template => "game_templates/show_results" })
  end
end
