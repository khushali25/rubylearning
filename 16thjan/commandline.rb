=begin
a,b,c=ARGV

puts "a=#{a}",a.class
a=a.to_i
print "class of a",a.class

puts "b=#{b}",b.class
puts "c=#{c}",c.class




puts "enter number"
str=$stdin.gets.chomp.to_i
puts "string=#{str}",str.class
=end


#a=ARGV.first     #takes only one arg
#puts "a=",a

=begin
filename=ARGV.first
file=open(filename)
puts "filename=",filename
puts file.read

puts "type the filename again"
file1=$stdin.gets.chomp
file=open(file1)
puts file.readline      #reads only one line
file.close
=end

=begin
prompt='>'
puts "enter the number"
puts prompt
x=$stdin.gets.chomp.to_i
print "x=",x



fname=ARGV.first         #filename from commandline
fopen=open(fname,'w+')

puts "truncate file........"
fopen.truncate(0)          #empty file

puts "enter line1:"        #get strings from user
line1=$stdin.gets.chomp

puts "enter line2:"
line2=$stdin.gets.chomp

fopen.write(line1)          #write string to file
fopen.write("\n")
fopen.write(line2)

fread=fopen.read
puts fread

puts "now file closed"
fopen.close

puts "file content is="         #read the content from file
fopen1=open(fopen,'r+')
puts fopen1.read
fopen1.close
=end

from_file,to_file=ARGV
puts "copying from #{from_file} to #{to_file}"
puts "from file=",from_file
puts "to file=",to_file

#read the content from test1.txt
puts ".................Read from test1.txt..............."
file=open(from_file)
fileread=file.read
puts fileread

puts "length of file=",fileread.length
puts "Does the file test2 exist? #{File.exist?(to_file)}"


puts "................copy the content from test1.txt to test2.txt...................."
file1=open(to_file,'w+')
file1.write(fileread)
file1.close


puts "......................display test2 file data................."
file2=open(to_file,'r+')
puts "content of test2.txt file...",file2.read
