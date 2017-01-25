puts "Enter the number of players :"
player=gets.chomp.to_i

puts "Enter the difference :"
diff=gets.chomp.to_i

arr=Array.new

(1..player).each do |i|
  print "player - ",i,"\n"
  arr.push(i)
end

count1=0
for k in arr
    k = count1 + diff
    arr.delete(k)
end
count1=k
#puts "player eliminated is :",count1
puts "array=",arr
