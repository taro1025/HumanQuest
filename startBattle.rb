require './message_dialog'

class StartBattle
  include MessageDialog

  def battle(**params)
    build_characters(params)

    loop do
      @hero.selectAction(@enemy) #攻撃か食事か選べる
      break unless areYouOk?(@enemy)
      @enemy.attack(@hero)
      break if @hero.hp <= 0
    end

    battleWin?

  end

  private

  def build_characters(params)
    @hero = params[:hero]
    @enemy = params[:enemy]
  end

  def battleWin?
    if @hero.hp <= 0
      puts "#{@hero.name}は目の前が真っ暗になった。"
    elsif @enemy.hp <= 0
      puts "#{@hero.name}は#{@enemy.name}を倒した。"
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
