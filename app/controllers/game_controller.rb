class GameController < ApplicationController
  def home
    render({ :template => "game_templates/home"})
  end

  def two_six
    @results_array = []
    2.times {@results_array.push(rand(1..6))}
    render({ :template => "game_templates/2d6"})
  end

  def two_ten
    @results_array = []
    2.times {@results_array.push(rand(1..10))}
    render({ :template => "game_templates/2d10"})
  end

  def one_twenty
    @results = rand(1..20)
    render({ :template => "game_templates/1d20"})
  end

  def five_four
    @results_array = []
    5.times {@results_array.push(rand(1..4))}
    render({ :template => "game_templates/5d4"})
  end
end
