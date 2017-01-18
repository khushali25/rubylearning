puts "Enter Number:"
n=gets.to_i

require 'prime'
p=Prime.instance.prime?(n)
puts "Prime" if p==true
puts "Not Prime" if p==false
