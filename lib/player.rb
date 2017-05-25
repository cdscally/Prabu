
class Player

  attr_reader :name, :hp

  def initialize(name, hp = 100)
    @name = name
    @hp = hp
  end

  def reduce_hp
    @hp -= 10
  end

end
