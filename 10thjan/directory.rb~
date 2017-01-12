#Directory
puts Dir

#puts Dir.entries "/"

puts Dir["/home/khushali1/*.txt"]
puts Dir["/*.txt"]

print File.read("/home/khushali1/demo.txt")

require 'fileutils'
FileUtils.cp('/home/khushali1/demo.txt', '/home/khushali1/Documents/rubylearning/10thjan/demo.txt')

#Append mode---> reloading the content

File.open("/home/khushali1/Documents/rubylearning/10thjan/demo.txt", "a") do |f|
f << "ruby and rails"
end

#Write mode----> replace old code with new code
=begin
File.open("/home/khushali1/Documents/rubylearning/10thjan/demo.txt", "a") do |f|
f << "ruby and rails"
end
=end

puts File.mtime('/home/khushali1/Documents/rubylearning/10thjan/demo.txt')

puts File.mtime('/home/khushali1/Documents/rubylearning/10thjan/demo.txt').hour

