puts "Enter Number:"
n=gets.to_i
=begin
flag=true

(2..n-1).each do |i|

	if(n%i==0)

	flag=false
			
	end

end

puts "Not prime" if flag==false
puts "Prime" if flag==true
=end


require 'prime'
p=Prime.instance.prime?(n)
puts "prime" if p==true
puts "Not prime" if p==false
