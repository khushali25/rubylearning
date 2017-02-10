def twenty_one?(*args)
 sum=args.inject(:+)
 if sum==21 then
   puts "Done"
 else
   puts "end"
 end
end

twenty_one?(3, 4, 5, 6)

puts "a" "b"

puts "".encoding
puts "ascii compatible string".encoding

puts "hello ruby".split.reverse.join(" ")
puts "hello ruby".reverse.split(' ').reverse.join(' ')
puts "hello ruby".split.map(&:reverse).join(" ")
puts "hello ruby".reverse.split(' ').reverse.join(' ')

class Foo
  def name
    puts "foo"
  end

  def say_name
    puts "#{name}"
  end
end

class Bar < Foo
  def name
    puts "bar"
  end
end

Bar.new.say_name

 def fibbo(n)
a = 0
 b = 1
 for i in 1..n
 i=a
 a=b
 b=i+a
end
 puts a
 end
fibbo(4)


def fibo_finder(n)
    first, second= 0, 1
  n.times {
       first, second= second, first + second
  }
  puts first
end
fibo_finder(7)


def key_for_min_value(hash)
  min1=hash.values.min
  puts hash.key(min1)
end
 key_for_min_value({"k" => 2, "h" => 3, "j" => 1})

 module A
  def name
    puts "a"
  end
end

module B
  def name
    puts "b"
  end
end

class C
  include A
  include B
end

class D
  include B, A
end

 C.new.name
 D.new.name
