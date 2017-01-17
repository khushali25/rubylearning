#first way

=begin

star="*"
puts star
for i in 1..4
	#puts star
	puts star=star+"*"
end

=end


#second way

(1..5).each do |i|
if(i==1)
puts "*"
else
puts "*"*i
end
end
