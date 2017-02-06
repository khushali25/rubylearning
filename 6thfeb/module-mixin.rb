module Module1
  def m1(num1)
    @num1=num1
  end
end

module Module2

  include Module1
  def m2(num2)
    puts @num1
    @num2=num2
  end
end

class Inher

  include Module1
  include Module2

  def inh
    print "num1=",@num1,"\n"
    print "num2=",@num2,"\n"
    if @num2!=0
    print "sum=",@num1/@num2
    else
    raise "Error"
    end

 rescue Exception => e
  puts "Can not divide"
 end
end

obj = Inher.new
obj.m1(10)
obj.m2(0)
obj.inh
