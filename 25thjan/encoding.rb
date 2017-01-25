#encoding: utf-8

puts "hello1".length
puts "hello1".bytesize
puts "hello1".encoding

puts "$".length
puts "$".bytesize
puts "$".encoding


print "bytes=","hello".bytes,"\n"
print "bytes=","A".ord,"\n"

arr=[1,2]
unless arr.length == 3
  puts "Usage: program.rb 23 45"

end

a=10
b=20
puts (a < b)? "small" : "not small"

age = 15
puts (13...19).include?(age) ? "teenager" : "not a teenager"


puts NIL.class # NilClass
puts nil.class # NilClass
puts nil.object_id # 4
puts NIL.object_id # 4

puts FALSE.class # FalseClass
puts false.class # FalseClass
puts false.object_id # 0
puts FALSE.object_id # 0

puts TRUE.class
puts TRUE.object_id


def call_block
  yield('hello', 99)
  yield('hello', 99)
end
call_block {|str, num| puts str + ' ' + num.to_s}



def try
  if block_given?
    yield
  else
    puts "no block"
  end
end
try # => "no block"
try { puts "hello" } # => "hello"
try do puts "hello" end # => "hello"

  arr = [3, 4, 2, 1, 2, 3, 4, 5, 6]
   puts arr.select {|a| a > 2}

   puts arr.reject {|a| a > 2}
   puts arr.drop_while {|a| a > 1}
