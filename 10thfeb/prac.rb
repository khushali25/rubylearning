puts RUBY_RELEASE_DATE         #A string indicating the release date of the Ruby interpreter
puts RUBY_PLATFORM             #A string indicating the platform of the Ruby interpreter.
puts TOPLEVEL_BINDING

$i = 0
$num = 5
begin
   puts("Inside the loop i = #$i" )
   $i +=1;
end until $i >= $num     #execute code when condition becomes false

0.step(6, 5) { puts "test" }

array = ['1', 'a', '2', 'b', '3', 'c']
(0..array.length-1).step(2) do |i|
  puts "Letter #{array[i]} "
end
# Letter 1 is a
# Letter 2 is b
# Letter 3 is c

for i in 0..5
   if i > 2 then         #when condition becomes true it will break the loop
      break
   end
   puts "Value of local variable is #{i}"
end

for i in 0..5
   if i < 2 then       #when condition becomes true it takes next element
      next
   end
   #puts "Value of local variable is #{i}"
end


#for i in 0..5
#   if i < 2 then  #when condition becomes true it redo from same element
#      puts "Value of local  variable is #{i}"
#      redo
#   end
#end

# for i in 1..5
#    retry if i > 2
  #  puts "Value of local variable is #{i}"
# end

joe = { :name => "Joe", :age => 30, :job => "plumber" }

for key, val in joe
    puts "#{key} is #{val}"
end
