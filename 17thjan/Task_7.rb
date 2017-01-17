puts "Enter number"
num=gets.to_i

puts "fibbo series for #{num} is:"
i=0
j=1
puts i,j

for temp in 1..num-2
	temp=i
	i=j
	puts j=temp+i
end

