module MessageDialog
  def eatOrAttackMessage
    print "１:やきにくを たべる\n２：こうげきする\n(1 or 2):"

  end

  def attackMessage(character)
    print "#{character.name}の攻撃"
    gets
  end

  def toughMessage(character)
    print "しかし #{character.name}は タフなおかげで なんとか たえた"
    gets
  end

  def eatMessage(character:, upHp:, upPower:, upWeight:)
    print "#{character.name}は 体重が #{upWeight}あがった"
    gets
    print "#{character.name}は HPが #{upHp}あがった"
    gets
    print "#{character.name}は こうげきりょくが #{upPower}あがった"
    gets
  end
end
