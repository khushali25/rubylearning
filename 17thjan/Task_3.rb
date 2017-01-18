#first way

=begin
i=5
while i>=1 do

	puts "*"*i
	i=i-1
	#puts "\n"
	
end
for i in 2..5
	puts "*"*i
	
end 
=end


#second way
5.downto(1).each {|i| puts "*"*i}
2.upto(5).each {|i| puts "*"*i}


