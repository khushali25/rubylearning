class Person
  def method1
    puts "Base Class method called by Derived class object"
  end
end

 class Men < Person
    def initialize(name)
      @name=name
      puts @name
    end
 end

 class Women < Person
    def initialize(name)
      @name=name
      puts @name
    end
 end

obj1 = Men.new("abc")
obj2 = Women.new("xyz")
obj1.method1

class Student
  def initialize(name)
    @name=name

    puts @name
    @salary=nil
    puts @salary
  end
attr_writer :salary

end

class Employee < Student
  def initialize(name,salary)
    super(name)
    puts @name
    @salary=salary
    puts @salary
  end
end

class Emp < Student
  def initialize(name)
    super(name)
    puts @name

  end
end



objs=Student.new("aaa")
puts objs.salary=10000

obje=Employee.new("bbb",15000)
puts obje.salary=20000

objemp=Emp.new("emp")
puts obje.salary=30000
