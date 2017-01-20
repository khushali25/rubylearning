#======================================
#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#Find the sum of all the multiples of 3 or 5 below N.
#======================================
puts "enter the number:"
num=gets.chomp.to_i

arr=Array.new
(1..num-1).each do |i|
  if ((i%3==0) || (i%5==0))
    arr.push(i)
  end
end
print "Numbers below ",num ," is : ",arr,"\n"
print "Sum of Numbers = ",arr.inject(:+),"\n"
