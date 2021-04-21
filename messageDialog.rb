module MessageDialog
  #キャラ作り
  def nameQuestionMessage
    print "きみの名前を教えてくれるかな？:"
  end

  def toughQuestionMessage
    print "ところで君はタフかい？(y/n):"
  end

  def weightQuestionMessage
    print "教えてくれてありがとう。最後に君の体重はいくつかね？:"
  end

  #戦闘開始

  def emergeEnemyMessage(enemy:)
    print "#{enemy.name}が あらわれた"
    gets
  end

  def eatOrAttackMessage
    print "１:やきにくを たべる\n２：こうげきする\n(1 or 2):"

  end

  def eatMessage(character:, upHp:, upPower:, upWeight:)
    print "#{character.name}は 体重が #{upWeight}あがった"
    gets
    print "#{character.name}は HPが #{upHp}あがった"
    gets
    print "#{character.name}は こうげきりょくが #{upPower}あがった"
    gets
  end

  def attackMessage(character)
    print "#{character.name}の攻撃"
    gets
  end

  def toughMessage(character)
    print "しかし #{character.name}は タフなおかげで なんとか たえた"
    gets
  end

  #戦闘終了

  def happyEndMessage(character:)
    print "#{character.name}は目の前が真っ暗になった。"
    gets
  end

  def badEndMessage(hero:, enemy:)
    print "#{hero.name}は#{enemy.name}を倒した。"
    gets
  end

end
