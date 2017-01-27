flavour = 'mango'
# an array whose elements are pointing
# to three objects - a float, a string and an array
var4 = [80.5, flavour, [true, false]]
puts var4[2]
print var4[3]=[1,2,3],"\n"
print var4,"\n"


locations = ['Pune', 'Mumbai', 'Bangalore']

locations.each do |loc|
  puts 'I love ' + loc + '!'
  puts "Don't you?"
end

# delete an entry in the middle and shift the remaining entries
locations.delete('Mumbai')
locations.each do |loc|
  puts 'I love ' + loc + '!'
  puts "Don't you?"
end


def arr
  10.times do |num|
    square = num * num
    return num,square if num > 5
  end
end

# using parallel assignment to collect the return value
num, square = arr
puts num
puts square

cmd = ARGV[1]
puts cmd

ENV["course"] = "FORPC101"
puts "#{ENV['course']}"

puts ENV['PATH']
puts ENV['HOME']
