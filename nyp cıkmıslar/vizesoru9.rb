class Anne
  def bilgi
    p "anne"
  end
end

class Cocuk<Anne
  def bilgi
    p "cocuk"
  end
end

foo = Cocuk.new
foo.bilgi