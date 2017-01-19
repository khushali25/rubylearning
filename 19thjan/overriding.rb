class Student
  def method2(name,age)
    @name=name
    @age=age
    puts @name
    puts @age
  end
end

class Employee < Student
  def method2(name,age)
    super
    @name=name
    print "hello ",@name,"\n"

  end
end
Employee.new.method2("abc",20)

class Bicycle
  attr_reader :gears, :wheels, :seats
  def initialize(gears = 5,wheels=1)
    @wheels = 4
    @seats = 1
    print "seat1=",@seats,"\n"
    @gears = gears
  end
end

class Tandem < Bicycle
  def initialize(gears,wheels)
    super
    print "seat2=",@seats,"\n"
    @seats = 3
    print "seat3=",@seats,"\n"
  end
end
t = Tandem.new(2,2)
puts t.gears
puts t.wheels
puts t.seats
b = Bicycle.new
puts b.gears
puts b.wheels
puts b.seats
