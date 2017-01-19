
class Student

  def method1(a,b)
    @a=a
    @b=b
    print "sum= ",@a + @b,"\n"
    puts "Student--method1"
  end

  def method2
    puts "Student--method2"
  end

  def method4
    puts "Student--method4"
  end

end

class Employee

  def initialize()
     @stud=Student.new()
  end

  def method1(a,b,c)
    @stud.method1(a,b)
    @a=a
    @b=b
    @c=c
    puts @c
    puts "sum= ",@a + @b + @c
    puts "Employee--method1"
  end

  def method2
    
    @stud.method2
    puts "Employee--method2"
  end

  def method3
    puts "Employee--method3"
  end
end

obj=Employee.new()
obj.method1(10,20,30)
obj.method2
