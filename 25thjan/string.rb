str="Hello"
puts str.swapcase
puts str

puts str.swapcase!
puts str
puts str.capitalize


s1 = 'abc'
s2 = 'bcd'
s3 = s1
if s1 == s2
  puts 'Both Strings have identical content'
else
  puts 'Both Strings do not have identical content'
end
if s1.eql?(s2)
  puts 'Both Strings have identical content'
else
  puts 'Both Strings do not have identical content'
end
if s1.equal?(s2)
  puts 'Two Strings are identical objects'
else
  puts 'Two Strings are not identical objects'
end
if s1.equal?(s3)
  puts 'Two Strings are identical objects'
else
  puts 'Two Strings are not identical objects'
end


"string".each_byte do |cd|
    puts cd
end

print "bytes=","hello".bytes,"\n"


names2 = %w{abc bcd def}
puts names2[0] # ann
puts names2[2] # susan
