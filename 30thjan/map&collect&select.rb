arr = [1,2,3]
arr.map do |i|
  puts i
end


list = (1..10).to_a

p list
p list.collect { |i| i >= 3 && i <= 7 }
p list.map { |i| i >= 3 && i <= 7 }
p list.select { |i| i >= 3 && i <= 7 }


power_array = -> (power, array_size) do
    1.upto(Float::INFINITY).lazy.map { |x| x**power }.first(array_size)
end

print power_array.(2 , 4)



arr1 = [1,2,3,4,5]
sum=0
#arr1.select do |i|
  #arr1.map do |i|
  arr1.collect do |i|
  sum=sum+i
  end
  puts "\n",sum


arr2=[1,2,3,4,5]
print arr2.map{|i| i>2}

arr2=[1,2,3,4,5]
print arr2.collect{|i| i>2}

arr2=[1,2,3,4,5]
print arr2.select {|i| i>2},"\n"

arr2=[1,2,3,4,5]
print arr2.map{|i| i*2}

arr2=[1,2,3,4,5]
print arr2.collect{|i| i*2}

arr2=[1,2,3,4,5]
print arr2.select {|i| i*2}


p = proc {|i| i * 2}
l = proc {|i| i * 3}

puts [1,2,3].map(&p)
puts [1,2,3].map(&l)
