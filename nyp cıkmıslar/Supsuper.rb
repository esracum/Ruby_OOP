class A
  def meth(x)
    puts "meth in A: #{x}"
  end
end

class B < A
  def meth(x)
    super

    puts 'meth in B'
  end
end


b = B.new

b.meth 42