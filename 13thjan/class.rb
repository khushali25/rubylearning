
require_relative 'Module1'
require_relative 'Module2'

$i=15
class Classdemo

include Module1
include Module2
	@@x=20
	def clsmethod
		a=10
		@b=2
		puts "#{@@x}"
		puts "#{a}"
		puts Module1::No * a * @b + @@x +$i
		puts Module2::Day
	end
	def module1method
		print "module1 method="
		print Module1.method1
	end
	def demomethod
		print "Multiply two vars of different module= ",Module1::No * Module2::Day,"\n"
	end

obj1=Classdemo.new
obj1.clsmethod
obj1.module1method
obj1.demomethod

puts Module2::Day
Module1.method2
Module2.method3
Module2.method4
end
