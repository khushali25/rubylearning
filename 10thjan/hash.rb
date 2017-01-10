#empty hash or dictionary

books={}
ratings=Hash.new(0)

#Key-value pair
books["hello"]= 10
books["abc"]= :symbol1
puts books

books["world"]= :symbol2
books["bcd"]= :symbol2
puts books

puts books.length 

#print keys 
puts books.keys

#print values
puts books.values.each { |count| ratings[count]+=1 }

puts ratings
puts ratings.length

#Blocks
5.times {puts "Hello"}

#Directory
puts Dir
#puts Dir.entries "/"
puts Dir["/home/khushali1/*.txt"]

