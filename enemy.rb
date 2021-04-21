
class Enemy < Human
  attr_reader :transform_point

  EVOLVE_POINT = 0.5
  EVOLVE_RATE = 1.5
  EVOLVED_NAME = "ツァラトゥストラ"

  def initialize(**params)
    super
    @evolvePoint = @hp * EVOLVE_POINT
    @evolveFlag = false
  end

  def attack(hero)

    checkEvolve

    #puts "#{@name}の攻撃"
    attackMessage(self)


    damage = calculateDamage(hero)

    puts "#{hero.name}は#{damage}のダメージを受けた"


    puts "#{hero.name}の残りHPは#{hero.hp}だ"
  end

  private

  def evolve
    oldName = @name
    @name = EVOLVED_NAME
    @weight *= EVOLVE_RATE
    puts "#{oldName}は超人となり#{@name}となった。"
    @evolveFlag = true

  end

  def checkEvolve
    if @hp < @evolvePoint && @evolveFlag == false
      evolve
    end
  end


end
