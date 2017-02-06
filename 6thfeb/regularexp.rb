line1 = "Cats are smarter than dogs";
line2 = "Dogs also like meat";

if ( line1 =~ /Cats(.*)/ )
  puts "Line1 contains Cats"
end
if ( line2 =~ /Cats(.*)/ )
  puts "Line2 contains  Dogs"
end

m1 = /Ruby/.match("The future is Ruby")
puts m1.class  # it returns MatchData
m2 = "The future is Ruby" =~ /Ruby/
puts m2        #If the pattern is found in the string, =~ returns its starting position, otherwise it returns nil.

m3 = "Ruby On Rails" =~ /^Ruby/
puts m3   #Matches beginning of line.

m4 = "Ruby On Rails" =~ /s$/
puts m4

m5 = "Ruby On Rails" =~ /^$/
puts m5

m6 = "Ruby On Rails" =~ %r/Ruby/
puts m6


m8 = /[0-9a-z]/.match('Aa0ww')
puts m8

m9 = /\d/.match("c190")
puts m9

m10 = /\D/.match("7a90")
puts m10

m10 = /\w/.match("_b1a90")       #matches any digit, alphabetical character, or underscore (_).
puts m10

m11 = /\s/.match("\t_b1a90")       #matches any digit, alphabetical character, or underscore (_).
puts m11.class

puts /W[aeiou]rd/.match("Word")

string = "My phone number is (123) 555-1234."
phone_re = /\((\d{3})\)\s+(\d{3})-(\d{4})/
m = phone_re.match(string)
unless m
  puts "There was no match..."
  exit
end
print "The whole string we started with: "
puts m.string
print "The entire part of the string that matched: "
puts m[0]
puts "The three captures: "
3.times do |index|
  puts "Capture ##{index + 1}: #{m.captures[index]}"
end
puts "Here's another way to get at the first capture:"
print "Capture #1: "
puts m[1]

puts /1 \+ 2 = 3\?/.match('1 + 2 = 3?')
puts /\+ 1/.match('+ 1')
puts /\+ \+ 1/.match('+ + 1')
puts /3 \+ 2 \* 7 \= 17 \+ 1/.match('3 + 2 * 7 = 17 + 1')

puts /[a-z0-9-A-Z]/.match("wE4Ds5")
puts /./.match("\n")     #match any character except new line

puts /ruby?/.match("arubay")

puts /ruby?/.match("aruabay")
puts /ruby*/.match("arubay")
puts /ruby*/.match("arubay")

puts /\(\d{3}\)/.match("(123)")
puts /\(\d{1}\s\+\s\d{1}\s\=\s\d{3}\s\*\s\d{2}\)/.match("(1 + 2 = 123 * 43)")

puts /<.+>/.match("<a><b>")
puts /<.?>/.match("<a><b>")

puts /{.*}/.match("{}b}")
puts /<.*?>/.match("<a><b>")


phone = "2004-959-559 #ThTis is Phone Number"
phone2 = "2004-959-559 #ThTis is Phone Number"
# Delete Ruby-style comments
phone = phone.sub!(/#.*$/, "")
puts "Phone Num : #{phone}"

phone1 = phone2.sub!(/#.*?T/, "")
puts "Phone Num : #{phone1}"

# Remove anything other than digits
phone = phone.gsub!(/\D/, "")
puts "Phone Num : #{phone}"

text = "rails are rails, really good Ruby on Rails"
# Change "rails" to "Rails" throughout
#puts text.gsub!("rails", "RAils")
puts text.gsub!(/\brails\b/, "RAils")
