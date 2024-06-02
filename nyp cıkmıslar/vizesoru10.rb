class Foo
  attr_accessor :a
  def initialize(a)
    @a=a 
  end
  def bar
    self.a+=3
  end
end
class Bar<Foo
  def bar
    super
    a+5
  end
end
b= Bar.new 7
p b.bar + b.a