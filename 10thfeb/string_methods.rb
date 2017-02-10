a = "hello "
puts a << "world"   #=> "hello world"
puts a.concat(65)   #=> "hello world!" #ASCII values

puts "hello".capitalize    #=> "Hello"
puts "HELLO".capitalize    #=> "Hello"
puts "123Abc".capitalize   #=> "123abc"

puts "abcdef".casecmp("abcde")     #=> 1
puts "aBcDeF".casecmp("abcdef")    #=> 0
puts "abcdef".casecmp("abcdefg")   #=> -1
