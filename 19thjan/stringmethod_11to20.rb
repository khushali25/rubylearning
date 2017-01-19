#str.center
str="Ruby is object oriented\n"
puts str.center(50)

#str.chomp                     #Removes the record separator ($/), usually \n, from the end of a string
str1="hello\n"
puts str1.chomp

str2="hello\n\r"
puts str2.chomp

str3="hello\n\@"               #returns whole string
puts str3.chomp

str4="hello11111\n@"            #returns nil
puts str4.chomp!
print "fwfhw"

#str.chop

str5="hello1\n"
puts str5.chop

str6="hello1\n\r"
puts str6.chop

str7="hello11111\r\n"
puts str7.chop

str8="hello1"
puts str8.chop

str8="hello n m"
puts str8.chop

str9="hello n m"
puts str9.chop!

str10=" "
puts str10.chomp!

str11=" "
puts str11.chop!

s="ruby"
s1="railsss"
puts s1.concat(s)

puts s1.count(s1,"s")

s2="hello"
s3="hii"
puts s2.crypt(s3)     #range of string sholud be a.z, A.Z, 0.9, . or /.

s4="ruby"
puts s4.delete("rb")

s5="rubyrails"
puts s5.delete("z")

s6="rubyrails"
puts s6.delete!("z")

s7="rubyrails"
puts s7.delete!("b")

s8="rubyrails"
puts s8.delete!(" ")

s9="rubyrails"
puts s9.delete(" ")

puts arr=[1,2,3,4,5].inject(:+)
puts arr1=[2,3,4].reduce(:+)
