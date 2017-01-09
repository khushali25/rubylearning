a="%{first}%{second}%{third}%{fourth}"
puts a % {first:1,second:"abc",third:true,fourth:a}

x='hello'
b=10
c=true
d=b
puts "#{x}#{b}#{c}#{d}"

puts 123.class
