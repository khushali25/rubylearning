#Dir.mkdir("mydir")

Dir.chdir("/home/khushali1/Documents/rubylearning/13thjan/mydir")
puts Dir.pwd


#1st way
puts Dir.entries("/home/khushali1/Documents/rubylearning/13thjan").join(' ')


#2nd way
puts Dir["/home/khushali1/Documents/rubylearning/13thjan/*"]


#3rd way
Dir.foreach("/home/khushali1/Documents/rubylearning/13thjan/") do |entry|
	puts entry
end
