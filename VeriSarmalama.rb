class Pospoint
  attr_reader :x, :y

  def initialize(x, y)
    @x = x
    @y = y 
  end

  def move_to_origin
    reset
  end

  def to_s
    "(#{x},#{y})"
  end

  private
  attr_writer :x,:y
  def reset
    @x = 0
    @y = 0
  end
end

nokta = Pospoint.new 9,9
p nokta
p nokta.move_to_origin 
p nokta 
# p.reset dogrudan calistirilamaz.