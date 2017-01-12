_x=10    #local var doesn't work

puts "x is defined" if _x

puts "x is undefined" unless _x


@y=20
puts "y is set" if @y      #executes bcoz condition is true
puts "y is unset" unless @y>=30     #execute bcoz condition is false


x=10
unless x>20 && x<30
puts "execute unless"
else
puts "ne"
end

@b=20
puts " b is set" if @b              
puts "b is unset" unless @c    #execute bcoz @c is not defined


var=3
case var
when 1..3
puts "3 is not valid here"
when 2..5
puts "3 is valid here"
else
puts "not in range"
end


puts "enter age"
age=gets.to_i
case age
when 10..15,16..30
puts "bet 10 and 30"
when 40..50
puts "bet 30 and 50"
else
puts "above 50"
end


puts "enter age"
age1=gets.to_i
result=case age1
when 10..30 then "bet 10 and 30"
when 40..50 then "bet 30 and 50"
else "above 50"
end
puts result


puts "enter anything"
var2=gets.to_i
case var2
when 0..100
puts "integer"
when a..z
puts "small alpha"
end

p
