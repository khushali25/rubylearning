#way1--class method
class Methoddemo1
A=10
@@b=20
	def self.method1
		puts "enter name"
		name=gets
		print name, "is class method1\n"
		
		puts "#{@@b}\n"
	end

	def method1(addr)
		puts "#{addr} is an instance method"
	end

Methoddemo1.method1

obj1=Methoddemo1.new
obj1.method1("abc") 

end

#way2
class Methoddemo2
	class << self
		def method2
			puts "class method2"
		end
		def method222
			print "a=", Methoddemo1::A   #only constant variable
		end
        end

    def method22(area)
	puts "\n #{area} instance method22"
    end

Methoddemo2.method2
Methoddemo2.method222
Methoddemo2.new.method22("thaltej")

end


#way3		
class Methoddemo3;end
	def Methoddemo3.method3
		puts "class method3"
	end

	def Methoddemo3.method4
		puts "class method4"
	end

Methoddemo3.method3
Methoddemo3.method4



