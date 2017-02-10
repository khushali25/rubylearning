print ary = Array.new    #=> []
print Array.new(3)       #=> [nil, nil, nil]
print Array.new(3, true) #=> [true, true, true]

print Array.new(3){ |index| index ** 2 },"\n"

print a = Array.new(2, Hash.new),"\n"

print empty_table = Array.new(3) { Array.new(3) }

print Array({:a => "a", :b => "b"})

arr = [1, 2, 3, 4, 5, 6]
puts arr.first #=> 1
puts arr.last  #=> 6
puts arr[2]    #=> 3
puts arr.at(0) #=> 1
puts arr[100]  #=> nil
puts arr[-3]   #=> 4
print arr[2, 3] #=> [3, 4, 5]
print arr[1..4] #=> [2, 3, 4, 5]
print arr[1..-3] #=> [2, 3, 4]

arr = ['a', 'b', 'c', 'd', 'e', 'f']
#arr.fetch(100) #=> IndexError: index 100 outside of array bounds: -6...6
puts arr.fetch(100, "oops") #=> "oops"


#Adding Items to Arrays¶ ↑
arr = [1, 2, 3, 4]
print arr.push(5) #=> [1, 2, 3, 4, 5]
print arr << 6    #=> [1, 2, 3, 4, 5, 6]
#unshift will add a new item to the beginning of an array.

print arr.unshift(0) #=> [0, 1, 2, 3, 4, 5, 6]
#With insert you can add a new element to an array at any position.

print arr.insert(3, 'apple')  #=> [0, 1, 2, 'apple', 3, 4, 5, 6]
#Using the insert method, you can also insert multiple values at once:

print arr.insert(3, 'orange', 'pear', 'grapefruit')
#=> [0, 1, 2, "orange", "pear", "grapefruit", "apple", 3, 4, 5, 6]


arr =  [1, 2, 3, 4, 5, 6]
print arr.pop(1) #=> 6
print arr.shift(1) #=> 1
print arr.delete_at(1)
print arr.delete(4)     #element 4 will be deleted

arr = ['foo', 0, nil, 'bar', 7, 'baz', nil]
print arr.compact ,"\n"

arr = [2, 5, 6, 556, 6, 6, 8, 9, 0, 123, 556]
print arr.uniq

arr = [1, 2, 3, 4, 5]
print arr.each { |a| print a -= 10, " " }

s1 = [ "colors", "red", "blue", "green" ]
s2 = [ "letters", "a", "b", "c" ]
s3 = "foo"
a  = [ s1, s2, s3 ]
print a.assoc("letters")  #=> [ "letters", "a", "b", "c" ]
print a.assoc("foo")      #=> nil


a = %w{ a b c d e f }
#print "keep-if : ",a.keep_if { |v| v =~ /[aeiou]/ }  #=> ["a", "e"]
print "keep-if : ",a.delete_if { |v| v =~ /[aeiou]/ }  #=> ["a", "e"]

arr1=["a","B","c","D"]
print arr1.map{|x| x.upcase }

arr2=[1,2,3,"a","c",3]
print "\n"
print arr2.collect{|x| x if x.class==String}
print arr2.select{|x| x if x.class==String}

arr3=["a","b","c","d"]
puts "\n"
print arr3.rotate
print arr3.rotate(2)
print arr3
print arr3.rotate!(2)
print arr3
print arr3.sample(3)

print arr3.shuffle

a1 = [ "d", "a", "e", "c", "b" ]
print "\n",a1.sort                    #=> ["a", "b", "c", "d", "e"]
print a1.sort { |x,y| y <=> x }  #=> ["e", "d", "c", "b", "a"]

arr4=[["a","b"],[1,2],[1,2]]
print arr4.transpose
print arr4.to_h
print arr4.uniq!{|x| x.first}

print "\n",[ "a", "b", "c" ] | [ "c", "d", "a" ]

b=["a","b","c"]
c=["f","g","h"]
print [1,2,3].zip(b,c)
