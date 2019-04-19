class Player
  attr_reader :name
  attr_accessor :HP
  def initialize(name)
    @name = name
    @HP = 8000
  end

  def attack(player)
    player.HP -= 100
  end
end
