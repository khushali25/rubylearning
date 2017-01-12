i=0
num=5
until i>num do
	puts "#{i}"
	i+=1
end

a=1
b=5
begin
	puts "hello"
	puts "#{a}"
	a+=1
end while a>b


sum=0
for i in 1..5
sum=sum+i
end
puts "sum=#{sum}"

=begin
for i in 1..5
retry if i > 3
	puts "value of i=#{i}"
end
=end

=begin  #inifinite loop
for x in 1..5
	if x>2
	print "x= #{x}"
	redo          #when condition becomes true it will restart the loop from that particular value.
	end
end
=end

=begin
c,d = 1,5
while c<d do
	if c<2 then
	next		#when condition becomes false it will print that value.
	end

puts "value of c=#{c}"
end
=end

for i in 1..5
	if i>2 then
	break             #when condition becomes false it will break the loop
	end
puts "value = #{i}"
end


arr=[1,2,3,4,5]
sum=0
arr.each do |i|
sum=sum+i
end
puts "summ=#{sum}"

#collection
arr=[1,2,3,4,5]
sum=0
b=Array.new
b=arr.collect{|c| 10*c}
puts "sum=#{b}"
