class String
  def write_size
    self.size
  end
end
a = "Tell me my size!"
puts a.write_size
puts self.class
puts self

class Bird
  def preen
    puts "I am cleaning my feathers."
  end
  def fly(a)
    puts "I am flying.",a
  end
end

class Penguin < Bird
  def fly(a)
    super
    puts "Sorry. I'd rather swim.",a
  end
end

p = Penguin.new
p.preen
p.fly(10)

class GF
def initialize
  puts 'In GF class'
 end
 def gfmethod
  puts 'GF method call'
 end
end

# class F sub-class of GF
class F < GF
 def initialize
  puts 'In F class'
 end
end

# class S sub-class of F
class S < F
 def initialize
  puts 'In S class'
 end
end
son = S.new
son.gfmethod

#ROT13 --- Hacker's Rank
def rot13(secret_messages)
  return secret_messages.tr("abcdefghijklmnopqrstuvwxyz",
        "nopqrstuvwxyzabcdefghijklm")
end
puts rot13("Why did the chicken cross the road?")
