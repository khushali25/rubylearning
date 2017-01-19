#convert string to lowercase
str="Hello RUby"
puts str.downcase

str1="Hello Ruby"
st=str1.downcase!
puts str1
puts st

str2="hello \n '' \t"
puts str2
puts str2.dump

s = "\"hello!\"\tworld"
puts s
puts s.dump

str3=" "
puts str3.empty?

str4=""
puts str4.empty?

#compares length as well as content(case-sensitive)
puts str3.eql?(str4)

str5="hello"
str6="hello"
print "equal=",str5.eql?(str6)
