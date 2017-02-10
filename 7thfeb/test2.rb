# puts ["a","b","c"].join
#
# a = [ "a", "b", "x", "d", "e" , "f"]
# puts a[2] +  a[0] + a[1]    #=> "cab"
# puts a[6]                   #=> nil
# puts a[1, 2]                #=> [ "b", "c" ]
# puts a[0,0]                #=> [ "b", "c", "d" ]
# a[4..7]                #=> [ "e" ]
# a[6..10]               #=> nil
# a[-3, 3]               #=> [ "c", "d", "e" ]
# # special cases
# a[5]                   #=> nil
# a[5, 1]                #=> []
# a[5..10]               #=> []

arr = ["a","b"]
puts arr[0,0]


class A
  def self.m_t(m2,m1)
  alias_method m2,m1
  remove_method m1
  end
end

class B < A
  def m3
    puts "hello"
  end
  m_t(:m4,:m3)
end
obj = B.new
puts obj.m4


module ChildModule
  def self.included(receiver)
    receiver.send :include, ParentModule
  end
end

module ParentModule
  def parent_module_method
    'This should get called'
  end
end

class TestClass
  include ChildModule
end

puts TestClass.new.parent_module_method


flag=0
for i in 2..2000/2

	flag=1 if(2000%i==0)

end

puts "Not prime" if flag==1
puts "Prime" if flag==0


print [[1, 2], [3, 4]].flatten(1)
print [1, [2, 3, [4, 5, [6, 7]]], 8].flatten(3)
print [].flatten(2)
print [[1, 2], [3, 4]].flatten(2)
print [1, 2, [[{a: :b}]]].flatten(2)

# class Array
#   def flattify(array)
#   array.each_with_object({}) do |element, flattened|
#     flattened.shift *(element.is_a?(Hash) ? flattify(element) : element)
#   end
#   end
# print Array.new.flattify([1, 2, [[{a: :b}]]])
# end

def prime_factorization(num)
  factors = []
  n = num
  x = 2
  while n > 1
    while n % x == 0
      factors << x
      n /= x
    end
    x += 1
  end
  print "\n",factors
  print "\n",factors.uniq
end
prime_factorization(44)



def pt(n)
  return [1] if n == 0
  return [1, 1] if n == 1
  [1] + pt(n-1)[1..-1].each_with_index.map{|x,i| x + pt(n-1)[i]} + [1]
end
print "\n",pt(4)
