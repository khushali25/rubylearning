#instance variable
$global_var=10
class Customer
	@@class_var=0
        
    def initialize(id,name,age)
	@cust_id=id
	@cust_name=name
	@cust_age=age
	puts "#{@cust_id}"
        puts "#{@cust_name}"
        puts "#{@cust_age}"

        @@class_var+=1
        puts "#{@@class_var}"
    end

    def multiplication(num1,num2)

        mul=num1*num2
        puts "Multiplication= #{mul}"
        
    end
 
 
obj1=Customer.new("1","abc","20")
obj2=Customer.new("2","pqr","30")


obj1.multiplication(20,1)
obj2.multiplication(40,21)

end

#Global variable
class Globaldemo

def printglobal
	puts "Global var= #{$global_var}"
  end

obj3=Globaldemo.new
obj3.printglobal

end

#class variable
class Classvardemo
 @@class_var=0

def initialize
@@class_var+=1
puts "Class var=#{@@class_var}"
end

obj4=Classvardemo.new
obj4=Classvardemo.new

end

#constant
class Constantdemo
	Const_var=100
   
  def show
   #Const_var+=1
   #Const_var=120
   puts "Constant var=#{Const_var}"
  end

obj5=Constantdemo.new
obj5.show
end

puts __FILE__
puts __LINE__
