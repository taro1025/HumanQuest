require './human.rb'
require './hero.rb'
require './enemy.rb'
require './startBattle.rb'
require './messageDialog.rb'


class StartGame
  include MessageDialog

  def startGame

    hero = heroMaking
    enemy = Enemy.new(name: "わるいやつ", tough: "y", weight: 43)

    startBattle = StartBattle.new
    startBattle.battle(hero: hero, enemy: enemy)
  end




  def heroMaking
    nameQuestionMessage
    name = gets.chomp

    toughQuestionMessage
    tough = true if gets.chomp == 'y'

    weightQuestionMessage
    weight = gets.to_i

    Hero.new(name: name, tough: tough, weight: weight)
  end
end

game = StartGame.new

game.startGame
