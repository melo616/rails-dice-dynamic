class GameController < ApplicationController
  def home
    render({ :template => "game_templates/home"})
  end

  def flexible
    @num_dice = params.fetch("numrolls").to_i
    @sides = params.fetch("sides").to_i
  
    @rolls = []
  
    @num_dice.times do
      die = rand(1..@sides )
  
      @rolls.push(die)
    end
  
    render({ :template => "game_templates/flexible"})
  end
end
