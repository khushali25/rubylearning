range1=('a'..'z').to_a
puts "#{range1}"

a=10..20
puts a.include?(15)

puts a.min
puts a.max

puts a.reject{|i| i<=15}

ran=('a'..'d').to_a
puts "#{ran}"
ran.each do |x|
puts x
end
