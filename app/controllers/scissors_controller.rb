class ScissorsController < ApplicationController
  def play_scissors
    @random_move = ["rock", "paper", "scissors"].sample
    render({ :template => "game_templates/show_rock" })
  end
end
