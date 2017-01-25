#===============================================
#Mark and Jane are very happy after having their first kid. Their son is very fond of toys, so Mark wants to buy some.
#There are N different toys lying in front of him, tagged with their prices, but he has only $K. He wants to
#maximize the number of toys he buys with this money.
#Now, you are Marks best friend and have to help him buy as many toys as possible.
#===============================================

hash={"Toy1" => 100,"Toy2" => 50,"Toy3" => 20,"Toy4" => 10,"Toy5" => 15,"Toy6" => 5}
hash.each do |key,value|
  print key,"=",value,"\n"
end
sort1=hash.sort_by{|key,value| value}

#puts "sorted value=",sort1

puts "Enter the Money do you have: "
money=gets.chomp.to_i

count = 0
sum =0
sort1.each do |key,value|
  sum = sum + value
  if sum <= money then
    puts key
    count = count + 1
  end
end
print "count=",count
