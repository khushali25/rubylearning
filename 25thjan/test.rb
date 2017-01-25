def g *args # The splat here says accept 1 or more arguments, in the form of an Array
  args      # This returns an array
end

def f arg
  arg
end

x,y,z = ['one', 'two', 'three'] # parrallel assignment lets us do this

if a = f(x) and b = f(y) and c = f(z) then
  d = g(a,b,c) # An array is returned, and stored in variable d
end

p d # using p to puts and inspect d
a = 'hello '
a<<'world.
I love this world...'
puts a
puts $$
puts $0
puts $:

puts "In which city do you stay?"
STDOUT.flush
city = gets.chomp
puts "The city is " + city

puts Float::DIG
puts Float::MAX

rice_on_square = 1
4.times do |square|
  puts "On square #{square + 1} are #{rice_on_square} grain(s)"
  rice_on_square *= 2
end

puts 'I am in class = ' + self.class.to_s
puts 'I am an object = ' + self.to_s
print 'The object methods are = '
puts self.private_methods.sort
puts self

def mtd(arg1="Dibya", arg2="Shashank", arg3="Shashank")
  "#{arg1}, #{arg2}, #{arg3}."
end
puts mtd
puts mtd("ruby")  
