i=0
numbers=[]

while i<3
	puts "at the top i is :",i
	numbers.push(i)
	i+=1
	puts "Numbers now:",numbers
	puts "At the bottom of the i is :",i
end
puts "The numbers : "
numbers.each{|num| puts num }


arr=['ruby','java','python']
puts arr[0]

puts defined? self=="self"

(0..5).each {|y| next puts y}
