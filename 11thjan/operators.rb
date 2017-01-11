puts (1..10)===15

puts 1.2.eql?(1.2)

a=true
b=false
puts (a and b) 
 
c=20
d=10
puts (c && d)  #false

puts defined? a  #local var

$c=20
puts defined? $_   #global var


