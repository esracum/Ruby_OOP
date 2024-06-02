class Foo

  attr_accessor :bar  

  $baz = 0

  @@count = 0  

  def initialize bar

    @bar = bar
  end

  p bar

end

baz = Foo.new 5

# class Foo
#   attr_accessor :bar

#   $baz = 0
#   @@count = 0

#   def initialize(bar)
#     @bar = bar
#   end

#   def display_bar
#     puts @bar
#   end
# end

# baz = Foo.new(5)
# baz.display_bar
