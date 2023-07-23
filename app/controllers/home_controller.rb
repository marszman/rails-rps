class HomeController < ApplicationController
  def show_rules
    @random_move = ["rock", "paper", "scissors"].sample
    render({ :template => "game_templates/show_rock" })
  end
end
