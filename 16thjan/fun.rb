def calculate(args)
	a=args*100
	b=a/1000
	c=b/100
	return a,b,c
end

args1=1000
aa,bb,cc=calculate(args1)
puts aa,bb,cc

puts "we have %s aa %s bb %s cc"%calculate(args1)	


puts "num:"
n1,n2=gets.chomp
puts "num=",n1,n2



	
