
module Student1
  def Student1.method1(a,b)
    @a=a
    @b=b
    puts "sum= ",@a + @b
    puts "Student1--method1"
  end
  def method2
    puts "Student1--method2"
  end
  def Student1.method4
    puts "Student1--method4"
  end
end

class Employee1

include Student1

  def method1(a,b,c)
    Student1.method1(a,b)
    @a=a
    @b=b
    @c=c
    puts "sum= ",@a + @b + @c

    puts "Employee1--method1"
  end
  def method2
    puts "......................With module-class....................."
    puts "Employee1--method2"
  end
  def method3
    puts "Employee1--method3"
  end
end

obj=Employee1.new()
obj.method2
obj.method1(10,20,30)
Student1.method4
