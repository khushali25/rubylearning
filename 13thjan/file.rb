#require 'FileUtils'
filevar=File.new("file1.txt","a+")

if filevar
	filevar.syswrite(" hello ruby \n")
else
	puts "Unable to open"
end
filevar.close


filevar1=File.open("file1.txt","r+")
if filevar1
	filevar1.syswrite("hello ruby1")
else
	puts "Unable to open"
end
filevar1.close


filevar2=File.open("file1.txt","r+")   #Unable to open
unless filevar2
	filevar2.syswrite("hello ruby1")
else
	puts "Unable to open"
end
filevar2.close


filevar3=File.open("file1.txt","a+")   #error not open for reading--w,a
				  #end of file reached-----w+
if filevar3
	puts filevar3.sysread(7)
else
	puts "Unable to open"
end
filevar3.close

   
filevar4=File.open("file1.txt","r+")      #can't open in w+ mode bcoz it overwrite the content
if filevar4
	filevar4.syswrite("ruby and rails")
	filevar4.each_byte{|ch| putc ch; putc ?.}
else
	puts "Unable to open"
end
filevar4.close


filevar5=File.open("file1.txt","r+")      #can't open in w+ mode bcoz it overwrite the content
if filevar5
	
	filevar5.each_byte{|ch| putc ch; putc ?.}
else
	puts "Unable to open"
end
filevar5.close



arr=IO.readlines("file1.txt")
print "\n line 1=", arr[0]
print "\n line 2=",arr[1]


IO.foreach("file2.txt"){|block| puts block}

File.rename( "file1.txt", "file2.txt" )

filevar7=File.new("file2.txt","a+")
puts filevar7.chmod(0755)

File.open("file.rb") if File::exists?("file.rb")

puts File.file?("input.txt")   #false
puts File.file?("file.rb")     #true
puts File::directory?("input.txt")  #false
puts File::directory?("/Documents/rubylearning")  #true

puts File.readable?("file2.txt")
puts File.writable?("file2.txt")
puts File.executable?("file2.txt")

puts File.zero?("file2.txt") 
puts File.size?("file2.txt")

puts File::ftype("file2.txt")
puts File::ftype("file.rb")

puts File::ctime("file.rb")
puts File::mtime("file.rb")
puts File::atime("file.rb")


