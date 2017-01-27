puts :symbol.object_id
#puts :1.object_id     #error

str="hello"
puts str.to_sym

puts a= %s[hello ruby]
puts a.class

#puts :a.to_i


class Test
  puts :Test.object_id
  def test
    puts :test.object_id
    @test=10
    puts :test.object_id
  end

  t = Test.new
  t.test
end


symb = :yes
if symb == :yes
  puts "symbol"
else
  puts "..."
end

str1="hello"            #convert string to symbol
puts str.to_sym.class

puts :symbol.to_s.class   #convert symbol to string
