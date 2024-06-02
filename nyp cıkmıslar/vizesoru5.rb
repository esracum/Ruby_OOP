class Cember
  attr_accessor :yaricap

  def initialize(r)
    @yaricap = r
  end

  def +(diger)
    #@yaricap + diger.yaricap
    #@yaricap + diger.@yaricap
    # yaricap + diger.yaricap
    Cember.new @yaricap + diger.yaricap
    # Hicbiri
  end
end

c1 = Cember.new(3)
c2 = Cember.new(6)
c3 = c1 + c2
p c3
