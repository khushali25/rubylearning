class Demo
  def m1
    puts "method m1"
  end
  def method_missing(name)
    puts "method missing called"
  end

  d=Demo.new
  d.m1
  d.abc
  d.abcd
end


class Person
  def initialize(name, age, incoming_race)
    @name = name
    @age = age
    puts self.race = incoming_race
  end

  def nam
    puts @name.split.map(&:capitalize).join(" ")
  end

  def agE
    puts @age
  end

  def method_missing(m, *args)
    case m
when :name then nam
when :age then agE
when :race then @race
when :race= then @race = args[0].capitalize
else
  super
end
  end
end

person = Person.new("kurt vonnegut", 89, "caucasian")

person.name
person.race
person.age



class Hash
  def keys_of(*args)
    args1 = {a: 1, b: 2, c: 3}
    puts args1.collect{|key,value| p key if args==args1(value)}
  end
Hash.new.keys_of(1)
end
