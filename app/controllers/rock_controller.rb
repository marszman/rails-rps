class RockController < ApplicationController
  def play_rock
    @random_move = ["rock", "paper", "scissors"].sample
    render({ :template => "game_templates/show_rock" })
  end
end
