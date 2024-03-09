class Point
  attr_accessor :x, :y

  def initialize(x,y)
    @x, @y = x,y
  end

end

P = Point.new 3,9
p P.y

class Pointo
  attr_accessor :x, :y
  #okuma ve yazma erisiminden biri olmadikca 

  def initialize(x,y)
    @x,@y = x,y
  end

  def reset
    #reset bir instance metodudur.
    self.x = 0
    self.y = 0
    #self denidiginde tanimlayicinin cozulmesinde yerel degisken secenegi on plandadir
    #self nesnenin kendisi demek
  end
  #boyle yazmak yerine 
  # def reset
  #  x=0
  #  y=0
  # end
  #şeklinde yazsaydin sifirlamazdi. cunku x denildiginde tannimlayicinin cozulmesinde yerel degisken secenegi on plandadir. 


end

A = Pointo.new 7,7
p A 
A.y
A.reset
p A

