require './human.rb'
require './hero.rb'
require './enemy.rb'
require './startBattle.rb'



class StartGame


  def startGame

    hero = characterMaking
    enemy = Enemy.new(name: "わるいやつ", tough: "y", weight: 43)

    startBattle = StartBattle.new
    startBattle.battle(hero: hero, enemy: enemy)
  end




  def characterMaking
    print "きみの名前を教えてくれるかな？:"
    name = gets.chomp
    print "ところで君はタフかい？(y/n):"
    tough = true if gets.chomp == 'y'
    puts tough
    print "教えてくれてありがとう。最後に君の体重はいくつかね？:"
    weight = gets.to_i

    Hero.new(name: name, tough: tough, weight: weight)
  end
end

game = StartGame.new

game.startGame
