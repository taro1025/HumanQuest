require './message_dialog.rb'

class Human
  include MessageDialog
  #入力してもらうやつ
  attr_accessor :weight, :name,:tough
  #プログラムで計算して出す。
  attr_accessor :hp, :power

  LACK_HP = rand(7..10)
  LACK_POWER = rand(2..3)

  EAT_RATE = 1.5

  def initialize(**params)
    @name = params[:name]
    @tough = true if params[:tough] = 'y'
    @weight = params[:weight]
    @hp = params[:weight] * LACK_HP
    @power = params[:weight] * LACK_POWER
  end



  def calculateDamage(character)
    damage = @power
    character.hp -= damage
    character.hp = 0 if character.hp <= 0
    damage
  end

end
