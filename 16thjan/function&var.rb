def two_arg(*args)      #more than one args 
	arg1,arg2=args       #unpack the args and assign to vars
	puts "args1=#{arg1}"
	puts "args2=#{arg2}"
end

#1st way
two_arg("abc",2.2)

#2nd way
a=10
b=20
two_arg(a,b)

#3rd way
two_arg(1+2,3+4)

#4th way
two_arg(a+9,a+8)

def two_args_again(args1,args2,args3)

	puts "args1=#{args1}"
	puts "args2=#{args2}"
	puts "args3=#{args3}"
end

two_args_again("aa",2,3.4)



def three_args(x,y,z)

	if(x>y) && (x>z)
		puts "#{x} is greater"
	elsif(y>x) && (y>z)
		puts "#{y} is greater"
	else
		puts "#{z} is greater"
	end
end
three_args(3.1,2,3)
