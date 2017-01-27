class Dog
  def initialize(breed, name)
    # Instance variables
    @breed = breed
    @name = name
  end

  def bark
    puts 'Ruff! Ruff!'
  end

  def display
    puts "I am of #{@breed} breed and my name is #{@name}"
  end

  d=Dog.new('aa','bb')
  d.bark
  d.display

  d1=d
  d1.bark
  d1.display

  d=nil
  d.display
  d1 = nil
  puts "class=",d.class
  puts d.methods.sort


  if d.respond_to?("talk")
    d.talk
  else
    puts "sorry"
  end
end


num = "abc"
puts(num.instance_of? String)

num1 = 1
puts(num1.instance_of? Fixnum)

puts GC stat
