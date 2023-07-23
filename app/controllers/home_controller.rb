class HomeController < ApplicationController
  def go_rules
    render({ :template => "game_templates/show_rules" })
  end
end
