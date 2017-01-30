def plus_1(y)
   x = 100
   puts x
   y.call       #remembers the value of x = 1
end

x = 1
y = -> { x + 1 }
puts plus_1(y)  #2


class SomeClass
  def initialize(value1)
    @value1 = value1
  end

  def value_printer(value2)
    lambda {puts "Value1: #{@value1}, Value2: #{value2}"}
  end
end

def caller(some_closure)
  some_closure.call
end

some_class = SomeClass.new(5)
printer = some_class.value_printer("some value")
caller printer



class SomeClass
  def initialize(value1)
    @value1 = value1
  end

  def value_incrementer
    lambda {@value1 += 1}
  end

  def value_printer
    lambda {puts "value1: #{@value1}"}
  end
end

some_class = SomeClass.new(2)

3.times do
some_class.value_incrementer.call
some_class.value_printer.call
end

p = proc {|x, y| "#{x}#{y}"}

puts p.call("foo","bar")
puts p::("foo","bar")
puts p.("foo","bar")
puts p["foo","bar"]
