class PaperController < ApplicationController
  def play_paper
    @random_move = ["rock", "paper", "scissors"].sample
    render({ :template => "game_templates/show_rock" })
  end
end
