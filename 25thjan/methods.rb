def mtd(arg1="Dibya", arg2="Shashank", arg3="Shashank")
  "#{arg1}, #{arg2}, #{arg3}."
end
puts mtd
puts mtd("ruby")


#alias
$var = 10
def oldmtd
  puts "old method",$var
end
alias newmtd oldmtd
alias $var1 $var

def oldmtd
  puts "old improved method", $var1
end
puts oldmtd
puts newmtd
puts oldmtd


#splat arguments
def foo(a,*my_string)
   a.inspect
  my_string.inspect
end
puts foo('hello','world',1)
#puts foo()


def mtd(a=99, b=a+1)
  puts a,b
end
puts mtd # displays 99, 100


#bang(!) methods
def downer(string)
  string.downcase
end
a = "HELLO"
puts downer(a)      # -> "hello"
puts a         # -> "HELLO"

def downer(string)
  string.downcase!
end
a = "HELLO"
puts downer(a)      # -> "hello"
puts a         # -> "hello"


arr=[1,2,3]
print arr.reverse
print arr.sort
print arr

print arr.reverse!
print arr.sort!
print arr,"\n"

#a=2.33
#puts a.format

str="Hello"
puts str.swapcase
puts str

puts str.swapcase!
puts str
puts str.capitalize

str1="Hello world"
puts str1.slice
