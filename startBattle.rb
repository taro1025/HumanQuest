require './messageDialog'

class StartBattle
  include MessageDialog

  def battle(**params)
    build_characters(params)

    emergeEnemyMessage(enemy: @enemy)

    loop do
      @hero.selectAction(@enemy) #攻撃か食事か選べる
      break unless areYouOk?(@enemy)
      @enemy.attack(@hero)
      break if @hero.hp <= 0
    end

    whichWin?

  end

  private

  def build_characters(params)
    @hero = params[:hero]
    @enemy = params[:enemy]
  end

  def whichWin?
    if @hero.hp <= 0
      happyEndMessage(character: @hero)
    elsif @enemy.hp <= 0
      badEndMessage(hero: @hero, enemy: @enemy)
    end
  end

  def areYouOk?(character)
    if character.hp <= 0 && character.tough
      toughMessage(character)
      character.tough = nil
      true
    elsif character.hp <= 0
      nil
    else
      true

    end
  end
end
