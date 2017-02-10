def sum(arr)
  a=arr.each_with_object([]){|i,arr1| arr1 << i.reverse if i.size%2==0}
  puts a
end
sum(["cat", "dog", "bird", "fish"])

proc = Proc.new{|*a| puts "true" if a && (a.size%2==0)}
proc.call(42)
proc.call([2, 4], [2, 1], [8, 11])


def foo(a,b,c)
  Proc.new{
  puts a
  puts b
  puts c}
end

proc = foo(1,2,3).to_proc
puts proc.class
proc.call

def foo1(a,b,c)
  lambda{
  puts a
  puts b
  puts c}
end

l = foo1(1,2,3)
puts l.class
l.call


# proc = Proc.new { |x| puts x } # creates a proc that takes 1 argument
# proc.call(2)                   # prints out 2
# proc.call                      # returns nil
# proc.call(1,2,3)


def f(x, y)
  x + y
end
proc = method(:f).curry[1]
p proc[2] # => 3
