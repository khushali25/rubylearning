#Self inside class and module definitions
puts self

class S
  puts 'Just started class S'
  puts "self=",self

  module M
    puts 'Nested module S::M'
    puts "self=",self
  end

  class S1
    puts "Nested Class S::S1"
    puts "self=",self
  end

  module N
    puts 'Nested module S::N '
    puts "self=",self
  end

  puts 'Back in the outer level of S'
  puts "self=",self
end
puts "self=",self


#Self in instance method definitions
class S2
  def m
    puts 'Class S2 method m:'
    puts "self=",self    #The output #<S:0x2835908> is Ruby's way of saying "an instance of S".
  end
end
s = S2.new
s.m


#Self in singleton-method and class-method definitions
obj=Object.new

def obj.m1            #singleton-method
  puts self
end
obj.m1


#Class methods are defined as singleton methods for class objects
class S
  def S.x
    puts "Class method of class S"
    puts self
  end
end
S.x  
