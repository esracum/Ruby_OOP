class Parent
  def say_hello
    puts "Hello from Parent class!"
  end
end

class Child < Parent
  def say_hello
    super # Üst sınıftaki say_hello metodunu çağırır.
    puts "Hello from Child class!"
  end
end

child = Child.new
child.say_hello
