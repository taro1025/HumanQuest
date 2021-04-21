class Hero < Human


  def selectAction(enemy)
    eatOrAttackMessage
    action = gets.chomp.to_i
    if action == 1
      eat
    elsif action == 2
      attack(enemy)
    end
  end

  private

  def attack(enemy)
    #puts "#{@name}の攻撃"
    attackMessage(self)

    damage = calculateDamage(enemy)

    puts "#{enemy.name}は #{damage}の ダメージを 受けた"
    puts "#{enemy.name}の残りHPは#{enemy.hp}だ"
  end


  def eat
    #増加量を計算するための記録
    beforeWeight = @weight
    beforeHp = @hp
    beforePower = @power


    @weight += EAT_RATE
    @hp *= EAT_RATE
    @power *= EAT_RATE

    #増加量の計算
    upHp = @hp - beforeHp
    upPower = @power - beforePower
    upWeight = @weight - beforeWeight
    eatMessage(character: self, upHp: upHp, upPower: upPower, upWeight: upWeight)
  end
end
