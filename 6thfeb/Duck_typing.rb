class Duck
  def speak
    puts "Quack I am #{@name}"
  end

  def fly
    puts 'Up up and away...'
  end
end

class Penguin
  def speak
    puts "Squak I am #{@name}"
  end

  def fly
    puts 'Nope. I swim...'
  end
end

class Bird
  def speak(bird)
    bird.speak
  end

  def fly(bird)
    bird.fly
  end
end

bird = Bird.new

puts "***behave as duck****"
duck = Duck.new
bird.speak(duck)
bird.fly(duck)

puts "***behave as penguin****"
penguin = Penguin.new
bird.speak(penguin)
bird.fly(penguin)


class Operation
  def m1(num1)
    num1.m1
  end

  def m2(num2)
    num2.m2
  end
end

class Power1
  def initialize(num1,num2)
     @num1=num1
     @num2=num2
   end

  def m1
    puts "num1=",@num1**2
  end

  def m2
    puts "num2=",@num2**2
  end
end

class Mult
  def initialize(num1,num2)
    @num1=num1
    @num2=num2
  end
  def m1
    puts @num1*3
  end

  def m2
    puts @num2*@num1
  end
end

op = Operation.new
po = Power1.new(10,20)

op.m1(po)
op.m2(po)

mu = Mult.new(10,20)

op.m1(mu)
op.m2(mu)
