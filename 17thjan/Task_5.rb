puts "Enter Number:"
n=gets.to_i

flag=true

for i in 2..(n-1)

	if(n%i==0)

	flag=false
			
	end

end
puts "Not prime" if flag==false
puts "Prime" if flag==true
