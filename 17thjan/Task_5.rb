puts "Enter Number:"
n=gets.chomp.to_i

flag=0

starttime=Time.now

for i in 2..n/2

	flag=1 if(n%i==0)
			
end

endtime=Time.now
diff=endtime-starttime

puts "Not prime" if flag==1
puts "Prime" if flag==0
puts diff

