module A
  def foo
    7
  end
end

module B
  def foo
    3
  end
end

class C
  include A
  extend B 
  def foo
    super*5+ C.foo
  end
  
end